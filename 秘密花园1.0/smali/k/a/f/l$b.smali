.class public final enum Lk/a/f/l$b;
.super Lk/a/f/l;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lk/a/f/l;-><init>(Ljava/lang/String;ILk/a/f/l$k;)V

    return-void
.end method


# virtual methods
.method public f(Lk/a/f/k;Lk/a/f/a;)V
    .locals 4

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p2, v0}, Lk/a/f/a;->p(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p1, Lk/a/f/k;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lk/a/f/i;->h(Ljava/lang/StringBuilder;)V

    .line 3
    sget-object p2, Lk/a/f/l;->l:Lk/a/f/l;

    .line 4
    iget-object v0, p1, Lk/a/f/k;->a:Lk/a/f/a;

    invoke-virtual {v0}, Lk/a/f/a;->a()V

    .line 5
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p2}, Lk/a/f/a;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p1, Lk/a/f/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "</"

    .line 8
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lk/a/f/k;->o:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 12
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p2, v1}, Lk/a/f/a;->s(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_2

    invoke-virtual {p2, v0}, Lk/a/f/a;->s(Ljava/lang/CharSequence;)I

    move-result v0

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p1, v3}, Lk/a/f/k;->d(Z)Lk/a/f/i$i;

    move-result-object v0

    .line 15
    iget-object v1, p1, Lk/a/f/k;->o:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Lk/a/f/i$i;->q(Ljava/lang/String;)Lk/a/f/i$i;

    iput-object v0, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    .line 17
    invoke-virtual {p1}, Lk/a/f/k;->h()V

    .line 18
    invoke-virtual {p2}, Lk/a/f/a;->v()V

    .line 19
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 20
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_2

    :cond_3
    const-string p2, "<"

    .line 21
    invoke-virtual {p1, p2}, Lk/a/f/k;->f(Ljava/lang/String;)V

    .line 22
    sget-object p2, Lk/a/f/l;->c:Lk/a/f/l;

    .line 23
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :goto_2
    return-void
.end method
