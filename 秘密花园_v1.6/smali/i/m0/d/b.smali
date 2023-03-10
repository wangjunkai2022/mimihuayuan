.class public final Li/m0/d/b;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.kt"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li/m;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/m0/d/b;->d:Ljava/util/List;

    return-void

    :cond_0
    const-string p1, "connectionSpecs"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Li/m;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Li/m0/d/b;->a:I

    iget-object v1, p0, Li/m0/d/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v3, p0, Li/m0/d/b;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/m;

    .line 3
    invoke-virtual {v3, p1}, Li/m;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4
    iput v0, p0, Li/m0/d/b;->a:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_3

    const-string v0, "Unable to find acceptable protocols. isFallback="

    .line 5
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Li/m0/d/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " modes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v3, p0, Li/m0/d/b;->d:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " supported protocols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lh/o/c/g;->e()V

    throw v2

    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.util.Arrays.toString(this)"

    invoke-static {p1, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/net/UnknownServiceException;

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    iget v0, p0, Li/m0/d/b;->a:I

    iget-object v1, p0, Li/m0/d/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_5

    .line 10
    iget-object v2, p0, Li/m0/d/b;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/m;

    invoke-virtual {v2, p1}, Li/m;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 11
    :goto_3
    iput-boolean v0, p0, Li/m0/d/b;->b:Z

    .line 12
    iget-boolean v0, p0, Li/m0/d/b;->c:Z

    .line 13
    iget-object v1, v3, Li/m;->c:[Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "sslSocket.enabledCipherSuites"

    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v3, Li/m;->c:[Ljava/lang/String;

    sget-object v4, Li/j;->t:Li/j$b;

    .line 15
    sget-object v4, Li/j;->b:Ljava/util/Comparator;

    .line 16
    invoke-static {v1, v2, v4}, Li/m0/b;->v([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 17
    :cond_6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 18
    :goto_4
    iget-object v2, v3, Li/m;->d:[Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 19
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    const-string v4, "sslSocket.enabledProtocols"

    invoke-static {v2, v4}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Li/m;->d:[Ljava/lang/String;

    .line 20
    sget-object v5, Lh/l/a;->a:Lh/l/a;

    .line 21
    invoke-static {v2, v4, v5}, Li/m0/b;->v([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 22
    :cond_7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    .line 23
    :goto_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "supportedCipherSuites"

    .line 24
    invoke-static {v4, v5}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v5, Li/j;->t:Li/j$b;

    .line 26
    sget-object v5, Li/j;->b:Ljava/util/Comparator;

    const-string v6, "TLS_FALLBACK_SCSV"

    .line 27
    invoke-static {v4, v6, v5}, Li/m0/b;->p([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I

    move-result v5

    const-string v6, "cipherSuitesIntersection"

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    if-eq v5, v0, :cond_8

    .line 28
    invoke-static {v1, v6}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    aget-object v4, v4, v5

    const-string v5, "supportedCipherSuites[indexOfFallbackScsv]"

    invoke-static {v4, v5}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v5, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v1, v5}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/String;

    .line 31
    array-length v5, v1

    add-int/2addr v5, v0

    .line 32
    aput-object v4, v1, v5

    .line 33
    :cond_8
    new-instance v0, Li/m$a;

    invoke-direct {v0, v3}, Li/m$a;-><init>(Li/m;)V

    .line 34
    invoke-static {v1, v6}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Li/m$a;->b([Ljava/lang/String;)Li/m$a;

    const-string v1, "tlsVersionsIntersection"

    .line 35
    invoke-static {v2, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Li/m$a;->e([Ljava/lang/String;)Li/m$a;

    .line 36
    invoke-virtual {v0}, Li/m$a;->a()Li/m;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Li/m;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 38
    iget-object v1, v0, Li/m;->d:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 39
    :cond_9
    invoke-virtual {v0}, Li/m;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 40
    iget-object v0, v0, Li/m;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_a
    return-object v3
.end method
