.class public Lcom/umeng/commonsdk/stateless/b$a;
.super Lcom/umeng/commonsdk/proguard/as;
.source "UMSLEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/stateless/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/as<",
        "Lcom/umeng/commonsdk/stateless/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/as;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/stateless/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/stateless/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/b$a;->b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/stateless/b;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/stateless/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->j()Lcom/umeng/commonsdk/proguard/an;

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->l()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    .line 4
    iget-byte v1, v0, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->k()V

    .line 6
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->G()V

    return-void

    .line 10
    :cond_0
    new-instance p1, Lcom/umeng/commonsdk/proguard/aj;

    const-string p2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Lcom/umeng/commonsdk/proguard/aj;

    const-string p2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Lcom/umeng/commonsdk/proguard/aj;

    const-string p2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    iget-short v0, v0, Lcom/umeng/commonsdk/proguard/ad;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    .line 17
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto/16 :goto_1

    :pswitch_0
    if-ne v1, v2, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->j:I

    .line 19
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->j(Z)V

    goto/16 :goto_1

    .line 20
    :cond_4
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto/16 :goto_1

    :pswitch_1
    if-ne v1, v3, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    .line 22
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->i(Z)V

    goto/16 :goto_1

    .line 23
    :cond_5
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto/16 :goto_1

    :pswitch_2
    if-ne v1, v3, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->h(Z)V

    goto/16 :goto_1

    .line 26
    :cond_6
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v3, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->g(Z)V

    goto/16 :goto_1

    .line 29
    :cond_7
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto :goto_1

    :pswitch_4
    if-ne v1, v2, :cond_8

    .line 30
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->f:I

    .line 31
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    goto :goto_1

    .line 32
    :cond_8
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto :goto_1

    :pswitch_5
    if-ne v1, v2, :cond_9

    .line 33
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->e:I

    .line 34
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    goto :goto_1

    .line 35
    :cond_9
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto :goto_1

    :pswitch_6
    if-ne v1, v2, :cond_a

    .line 36
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/commonsdk/stateless/b;->d:I

    .line 37
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    goto :goto_1

    .line 38
    :cond_a
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto :goto_1

    :pswitch_7
    if-ne v1, v3, :cond_b

    .line 39
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->c(Z)V

    goto :goto_1

    .line 41
    :cond_b
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v3, :cond_c

    .line 42
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->b(Z)V

    goto :goto_1

    .line 44
    :cond_c
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    goto :goto_1

    :pswitch_9
    if-ne v1, v3, :cond_d

    .line 45
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {p2, v4}, Lcom/umeng/commonsdk/stateless/b;->a(Z)V

    goto :goto_1

    .line 47
    :cond_d
    invoke-static {p1, v1}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;B)V

    .line 48
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/stateless/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/stateless/b$a;->a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/stateless/b;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/stateless/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->G()V

    .line 3
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->H()Lcom/umeng/commonsdk/proguard/an;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/an;)V

    .line 4
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->I()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 6
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 8
    :cond_0
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->J()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 10
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 12
    :cond_1
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 13
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->K()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 14
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 16
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->L()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 17
    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(I)V

    .line 18
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 19
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->M()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 20
    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(I)V

    .line 21
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 22
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->N()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 23
    iget v0, p2, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(I)V

    .line 24
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 25
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 26
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->O()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 27
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Ljava/nio/ByteBuffer;)V

    .line 28
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 29
    :cond_3
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 30
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->P()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 31
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 33
    :cond_4
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 34
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->Q()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 35
    iget-object v0, p2, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 37
    :cond_5
    invoke-virtual {p2}, Lcom/umeng/commonsdk/stateless/b;->F()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->R()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 39
    iget p2, p2, Lcom/umeng/commonsdk/stateless/b;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/ai;->a(I)V

    .line 40
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 41
    :cond_6
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->d()V

    .line 42
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->b()V

    return-void
.end method
