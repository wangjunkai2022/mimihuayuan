.class public final enum Lk/a/f/l$c0;
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
    invoke-virtual {p2}, Lk/a/f/a;->d()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {v0}, Lk/a/f/i$i;->r()V

    .line 3
    invoke-virtual {p2}, Lk/a/f/a;->v()V

    .line 4
    sget-object p2, Lk/a/f/l;->I:Lk/a/f/l;

    .line 5
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Lk/a/f/k;->h()V

    .line 7
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 8
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 9
    :pswitch_1
    sget-object p2, Lk/a/f/l;->K:Lk/a/f/l;

    .line 10
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 12
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 13
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 14
    :cond_1
    sget-object p2, Lk/a/f/l;->P:Lk/a/f/l;

    .line 15
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 16
    :cond_2
    :pswitch_2
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 17
    iget-object p2, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p2}, Lk/a/f/i$i;->r()V

    .line 18
    iget-object p2, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p2, v0}, Lk/a/f/i$i;->i(C)V

    .line 19
    sget-object p2, Lk/a/f/l;->I:Lk/a/f/l;

    .line 20
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 22
    iget-object p2, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lk/a/f/i$i;->i(C)V

    .line 23
    sget-object p2, Lk/a/f/l;->I:Lk/a/f/l;

    .line 24
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
