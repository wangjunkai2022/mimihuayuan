.class public Lcom/umeng/commonsdk/proguard/f$c;
.super Lcom/umeng/commonsdk/proguard/at;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/at<",
        "Lcom/umeng/commonsdk/proguard/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/at;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/proguard/f$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/umeng/commonsdk/proguard/ao;

    .line 3
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ac;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ac;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ac;->a(Ljava/lang/String;)V

    .line 6
    iget v0, p2, Lcom/umeng/commonsdk/proguard/f;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ac;->a(I)V

    .line 7
    iget v0, p2, Lcom/umeng/commonsdk/proguard/f;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ac;->a(I)V

    .line 8
    iget v0, p2, Lcom/umeng/commonsdk/proguard/f;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ac;->a(I)V

    .line 9
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ac;->a(Ljava/nio/ByteBuffer;)V

    .line 10
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ac;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ac;->a(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 13
    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/f;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/proguard/ao;->a(Ljava/util/BitSet;I)V

    .line 16
    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/f;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget p2, p2, Lcom/umeng/commonsdk/proguard/f;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/proguard/ac;->a(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/proguard/f;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/f$c;->a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/f;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/umeng/commonsdk/proguard/ao;

    .line 3
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/proguard/f;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->a(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/f;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->b(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/f;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->c(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/proguard/f;->d:I

    .line 10
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->d(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/proguard/f;->e:I

    .line 12
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->e(Z)V

    .line 13
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->w()I

    move-result v1

    iput v1, p2, Lcom/umeng/commonsdk/proguard/f;->f:I

    .line 14
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->f(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->A()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/f;->g:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->g(Z)V

    .line 17
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/f;->h:Ljava/lang/String;

    .line 18
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->h(Z)V

    .line 19
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/f;->i:Ljava/lang/String;

    .line 20
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->i(Z)V

    .line 21
    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ao;->b(I)Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ac;->w()I

    move-result p1

    iput p1, p2, Lcom/umeng/commonsdk/proguard/f;->j:I

    .line 24
    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/f;->j(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/proguard/f;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/f$c;->b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/f;)V

    return-void
.end method
