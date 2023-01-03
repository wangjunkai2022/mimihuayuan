.class public final enum Lk/a/f/l$b0;
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
    .locals 3

    .line 1
    sget-object v0, Lk/a/f/l;->r0:[C

    invoke-virtual {p2, v0}, Lk/a/f/a;->i([C)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    .line 3
    iget-object v2, v1, Lk/a/f/i$i;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lk/a/f/i$i;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result p2

    if-eqz p2, :cond_5

    const/16 v0, 0x20

    if-eq p2, v0, :cond_4

    const/16 v0, 0x22

    if-eq p2, v0, :cond_3

    const/16 v0, 0x27

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_2

    const v0, 0xffff

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_4

    const/16 v0, 0xa

    if-eq p2, v0, :cond_4

    const/16 v0, 0xc

    if-eq p2, v0, :cond_4

    const/16 v0, 0xd

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 5
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->i(C)V

    goto :goto_1

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Lk/a/f/k;->h()V

    .line 7
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 8
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_1

    .line 9
    :pswitch_1
    sget-object p2, Lk/a/f/l;->K:Lk/a/f/l;

    .line 10
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 12
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 13
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_1

    .line 14
    :cond_2
    sget-object p2, Lk/a/f/l;->P:Lk/a/f/l;

    .line 15
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_1

    .line 16
    :cond_3
    :pswitch_2
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 17
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->i(C)V

    goto :goto_1

    .line 18
    :cond_4
    sget-object p2, Lk/a/f/l;->J:Lk/a/f/l;

    .line 19
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 21
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->i(C)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
