.class public final enum Lk/a/f/l$d0;
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

    if-eqz v0, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x60

    if-eq v0, v1, :cond_3

    const v1, 0xffff

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p2}, Lk/a/f/a;->v()V

    .line 3
    sget-object p2, Lk/a/f/l;->N:Lk/a/f/l;

    .line 4
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 6
    invoke-virtual {p1}, Lk/a/f/k;->h()V

    .line 7
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 8
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p2, Lk/a/f/l;->M:Lk/a/f/l;

    .line 10
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2}, Lk/a/f/a;->v()V

    .line 12
    sget-object p2, Lk/a/f/l;->N:Lk/a/f/l;

    .line 13
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1, p0}, Lk/a/f/k;->i(Lk/a/f/l;)V

    .line 15
    invoke-virtual {p1}, Lk/a/f/k;->h()V

    .line 16
    sget-object p2, Lk/a/f/l;->a:Lk/a/f/l;

    .line 17
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 18
    :cond_3
    :pswitch_1
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 19
    iget-object p2, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    invoke-virtual {p2, v0}, Lk/a/f/i$i;->j(C)V

    .line 20
    sget-object p2, Lk/a/f/l;->N:Lk/a/f/l;

    .line 21
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 22
    :cond_4
    sget-object p2, Lk/a/f/l;->L:Lk/a/f/l;

    .line 23
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {p1, p0}, Lk/a/f/k;->k(Lk/a/f/l;)V

    .line 25
    iget-object p2, p1, Lk/a/f/k;->i:Lk/a/f/i$i;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lk/a/f/i$i;->j(C)V

    .line 26
    sget-object p2, Lk/a/f/l;->N:Lk/a/f/l;

    .line 27
    iput-object p2, p1, Lk/a/f/k;->c:Lk/a/f/l;

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
