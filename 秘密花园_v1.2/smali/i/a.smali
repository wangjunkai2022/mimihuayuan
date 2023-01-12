.class public final Li/a;
.super Ljava/lang/Object;
.source "Address.kt"


# instance fields
.field public final a:Li/x;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/m;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Li/s;

.field public final e:Ljavax/net/SocketFactory;

.field public final f:Ljavax/net/ssl/SSLSocketFactory;

.field public final g:Ljavax/net/ssl/HostnameVerifier;

.field public final h:Li/h;

.field public final i:Li/c;

.field public final j:Ljava/net/Proxy;

.field public final k:Ljava/net/ProxySelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILi/s;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Li/h;Li/c;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Li/s;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Li/h;",
            "Li/c;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "+",
            "Li/c0;",
            ">;",
            "Ljava/util/List<",
            "Li/m;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-eqz p3, :cond_9

    if-eqz p4, :cond_8

    if-eqz p8, :cond_7

    if-eqz p10, :cond_6

    if-eqz p11, :cond_5

    if-eqz p12, :cond_4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Li/a;->d:Li/s;

    iput-object p4, p0, Li/a;->e:Ljavax/net/SocketFactory;

    iput-object p5, p0, Li/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p6, p0, Li/a;->g:Ljavax/net/ssl/HostnameVerifier;

    iput-object p7, p0, Li/a;->h:Li/h;

    iput-object p8, p0, Li/a;->i:Li/c;

    iput-object p9, p0, Li/a;->j:Ljava/net/Proxy;

    iput-object p12, p0, Li/a;->k:Ljava/net/ProxySelector;

    .line 2
    new-instance p3, Li/x$a;

    invoke-direct {p3}, Li/x$a;-><init>()V

    .line 3
    iget-object p4, p0, Li/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p4, :cond_0

    const-string p4, "https"

    goto :goto_0

    :cond_0
    const-string p4, "http"

    :goto_0
    invoke-virtual {p3, p4}, Li/x$a;->h(Ljava/lang/String;)Li/x$a;

    .line 4
    invoke-virtual {p3, p1}, Li/x$a;->e(Ljava/lang/String;)Li/x$a;

    const/4 p1, 0x1

    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const p4, 0xffff

    if-lt p4, p2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 5
    iput p2, p3, Li/x$a;->e:I

    .line 6
    invoke-virtual {p3}, Li/x$a;->b()Li/x;

    move-result-object p1

    iput-object p1, p0, Li/a;->a:Li/x;

    .line 7
    invoke-static {p10}, Li/m0/b;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li/a;->b:Ljava/util/List;

    .line 8
    invoke-static {p11}, Li/m0/b;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li/a;->c:Ljava/util/List;

    return-void

    :cond_3
    const-string p1, "unexpected port: "

    .line 9
    invoke-static {p1, p2}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p1, "proxySelector"

    .line 10
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p1, "connectionSpecs"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p1, "protocols"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string p1, "proxyAuthenticator"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string p1, "socketFactory"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string p1, "dns"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string p1, "uriHost"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Li/a;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Li/a;->d:Li/s;

    iget-object v1, p1, Li/a;->d:Li/s;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->i:Li/c;

    iget-object v1, p1, Li/a;->i:Li/c;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->b:Ljava/util/List;

    iget-object v1, p1, Li/a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->c:Ljava/util/List;

    iget-object v1, p1, Li/a;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->k:Ljava/net/ProxySelector;

    iget-object v1, p1, Li/a;->k:Ljava/net/ProxySelector;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->j:Ljava/net/Proxy;

    iget-object v1, p1, Li/a;->j:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Li/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->g:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Li/a;->g:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->h:Li/h;

    iget-object v1, p1, Li/a;->h:Li/h;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->a:Li/x;

    .line 2
    iget v0, v0, Li/x;->f:I

    .line 3
    iget-object p1, p1, Li/a;->a:Li/x;

    .line 4
    iget p1, p1, Li/x;->f:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const-string p1, "that"

    .line 5
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Li/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/a;->a:Li/x;

    check-cast p1, Li/a;

    iget-object v1, p1, Li/a;->a:Li/x;

    invoke-static {v0, v1}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Li/a;->a(Li/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Li/a;->a:Li/x;

    invoke-virtual {v0}, Li/x;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Li/a;->d:Li/s;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Li/a;->i:Li/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Li/a;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Li/a;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Li/a;->k:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/net/ProxySelector;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Li/a;->j:Ljava/net/Proxy;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Li/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v0, p0, Li/a;->g:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Li/a;->h:Li/h;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Address{"

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li/a;->a:Li/x;

    .line 3
    iget-object v1, v1, Li/x;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a;->a:Li/x;

    .line 5
    iget v1, v1, Li/x;->f:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Li/a;->j:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, "proxy="

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/a;->j:Ljava/net/Proxy;

    goto :goto_0

    :cond_0
    const-string v1, "proxySelector="

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/a;->k:Ljava/net/ProxySelector;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
