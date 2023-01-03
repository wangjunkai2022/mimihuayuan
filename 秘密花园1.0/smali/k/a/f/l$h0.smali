.class public final enum Lk/a/f/l$h0;
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
    .locals 2

    .line 1
    sget-object v0, Lk/a/f/l;->s0:[C

    invoke-virtual {p2, v0}, Lk/a/f/a;->i([C)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {v1, v0}, Lk/a/f/i$i;->k(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result p2

    if-eqz p2, :cond_6

    const/16 v0, 0x20

    if-eq p2, v0, :cond_5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_4

    const/16 v0, 0x60

    if-eq p2, v0, :cond_4

    const v0, 0xffff

    if-eq p2, v0, :cond_3

    const/16 v0, 0x9

    if-eq p2, v0, :cond_5

    const/16 v0, 0xa

    if-eq p2, v0, :cond_5

    const/16 v0, 0xc

    if-eq p2, v0, :cond_5

    const/16 v0, 0xd

    if-eq p2, v0, :cond_5

    const/16 v0, 0x26

    if-eq p2, v0, :cond_1

    const/16 v0, 0x27

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 5
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->j(C)V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Lk/a/f/k;->h()V

    .line 7
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 8
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    :cond_1
    const/16 p2, 0x3e

    .line 9
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lk/a/f/k;->b(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->l([I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, v0}, Lk/a/f/i$i;->j(C)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 13
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 14
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 15
    :cond_4
    :pswitch_1
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 16
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->j(C)V

    goto :goto_0

    .line 17
    :cond_5
    sget-object p2, Lk/a/f/l;->H:Lk/a/f/l;

    .line 18
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 20
    iget-object p1, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lk/a/f/i$i;->j(C)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
