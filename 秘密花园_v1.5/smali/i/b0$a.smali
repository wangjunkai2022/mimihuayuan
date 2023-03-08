.class public final Li/b0$a;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public a:Li/q;

.field public b:Li/l;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/y;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/y;",
            ">;"
        }
    .end annotation
.end field

.field public e:Li/t$b;

.field public f:Z

.field public g:Li/c;

.field public h:Z

.field public i:Z

.field public j:Li/p;

.field public k:Li/d;

.field public l:Li/s;

.field public m:Ljava/net/Proxy;

.field public n:Ljava/net/ProxySelector;

.field public o:Li/c;

.field public p:Ljavax/net/SocketFactory;

.field public q:Ljavax/net/ssl/SSLSocketFactory;

.field public r:Ljavax/net/ssl/X509TrustManager;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/m;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Li/c0;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljavax/net/ssl/HostnameVerifier;

.field public v:Li/h;

.field public w:Li/m0/k/c;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Li/q;

    invoke-direct {v0}, Li/q;-><init>()V

    iput-object v0, p0, Li/b0$a;->a:Li/q;

    .line 3
    new-instance v0, Li/l;

    invoke-direct {v0}, Li/l;-><init>()V

    iput-object v0, p0, Li/b0$a;->b:Li/l;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/b0$a;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/b0$a;->d:Ljava/util/List;

    .line 6
    sget-object v0, Li/t;->a:Li/t;

    .line 7
    new-instance v1, Li/m0/a;

    invoke-direct {v1, v0}, Li/m0/a;-><init>(Li/t;)V

    .line 8
    iput-object v1, p0, Li/b0$a;->e:Li/t$b;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Li/b0$a;->f:Z

    .line 10
    sget-object v1, Li/c;->a:Li/c;

    iput-object v1, p0, Li/b0$a;->g:Li/c;

    .line 11
    iput-boolean v0, p0, Li/b0$a;->h:Z

    .line 12
    iput-boolean v0, p0, Li/b0$a;->i:Z

    .line 13
    sget-object v0, Li/p;->a:Li/p;

    iput-object v0, p0, Li/b0$a;->j:Li/p;

    .line 14
    sget-object v0, Li/s;->a:Li/s;

    iput-object v0, p0, Li/b0$a;->l:Li/s;

    .line 15
    sget-object v0, Li/c;->a:Li/c;

    iput-object v0, p0, Li/b0$a;->o:Li/c;

    .line 16
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Li/b0$a;->p:Ljavax/net/SocketFactory;

    .line 17
    sget-object v0, Li/b0;->E:Li/b0$b;

    .line 18
    sget-object v0, Li/b0;->D:Ljava/util/List;

    .line 19
    iput-object v0, p0, Li/b0$a;->s:Ljava/util/List;

    .line 20
    sget-object v0, Li/b0;->E:Li/b0$b;

    .line 21
    sget-object v0, Li/b0;->C:Ljava/util/List;

    .line 22
    iput-object v0, p0, Li/b0$a;->t:Ljava/util/List;

    .line 23
    sget-object v0, Li/m0/k/d;->a:Li/m0/k/d;

    iput-object v0, p0, Li/b0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 24
    sget-object v0, Li/h;->c:Li/h;

    iput-object v0, p0, Li/b0$a;->v:Li/h;

    const/16 v0, 0x2710

    .line 25
    iput v0, p0, Li/b0$a;->y:I

    .line 26
    iput v0, p0, Li/b0$a;->z:I

    .line 27
    iput v0, p0, Li/b0$a;->A:I

    return-void
.end method


# virtual methods
.method public final a(Li/y;)Li/b0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Li/b0$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Li/y;)Li/b0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Li/b0$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Li/b0$a;
    .locals 1

    if-eqz p3, :cond_0

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Li/m0/b;->d(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Li/b0$a;->y:I

    return-object p0

    :cond_0
    const-string p1, "unit"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Li/b0$a;
    .locals 1

    if-eqz p3, :cond_0

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Li/m0/b;->d(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Li/b0$a;->z:I

    return-object p0

    :cond_0
    const-string p1, "unit"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Li/b0$a;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iput-object p1, p0, Li/b0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 2
    sget-object p1, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 3
    sget-object p1, Li/m0/i/f;->a:Li/m0/i/f;

    .line 4
    invoke-virtual {p1, p2}, Li/m0/i/f;->b(Ljavax/net/ssl/X509TrustManager;)Li/m0/k/c;

    move-result-object p1

    .line 5
    iput-object p1, p0, Li/b0$a;->w:Li/m0/k/c;

    .line 6
    iput-object p2, p0, Li/b0$a;->r:Ljavax/net/ssl/X509TrustManager;

    return-object p0

    :cond_0
    const-string p1, "trustManager"

    .line 7
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "sslSocketFactory"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method
