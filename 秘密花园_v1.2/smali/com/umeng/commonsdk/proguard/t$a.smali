.class public Lcom/umeng/commonsdk/proguard/t$a;
.super Lcom/umeng/commonsdk/proguard/as;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/as<",
        "Lcom/umeng/commonsdk/proguard/t;",
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

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/proguard/t$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/t$a;-><init>()V

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
    check-cast p2, Lcom/umeng/commonsdk/proguard/t;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/t$a;->b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/t;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput-object v0, p2, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    .line 3
    iput-object v0, p2, Lcom/umeng/commonsdk/proguard/t;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->j()Lcom/umeng/commonsdk/proguard/an;

    .line 5
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->l()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/umeng/commonsdk/proguard/t;->a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/ad;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/t;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 7
    iget-short v0, v0, Lcom/umeng/commonsdk/proguard/ad;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/t;->a(S)Lcom/umeng/commonsdk/proguard/q;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->m()V

    .line 9
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->l()Lcom/umeng/commonsdk/proguard/ad;

    .line 10
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->k()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/commonsdk/proguard/t;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/t$a;->a(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/t;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/ai;Lcom/umeng/commonsdk/proguard/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/t;->a()Lcom/umeng/commonsdk/proguard/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/t;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/t;->d()Lcom/umeng/commonsdk/proguard/an;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/an;)V

    .line 4
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/t;->b:Lcom/umeng/commonsdk/proguard/q;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/t;->c(Lcom/umeng/commonsdk/proguard/q;)Lcom/umeng/commonsdk/proguard/ad;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/ai;->a(Lcom/umeng/commonsdk/proguard/ad;)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/proguard/t;->a(Lcom/umeng/commonsdk/proguard/ai;)V

    .line 6
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->c()V

    .line 7
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->d()V

    .line 8
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ai;->b()V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/umeng/commonsdk/proguard/aj;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/aj;-><init>(Ljava/lang/String;)V

    throw p1
.end method
