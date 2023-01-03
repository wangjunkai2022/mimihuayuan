.class public Li/b0;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Li/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/b0$a;,
        Li/b0$b;
    }
.end annotation


# static fields
.field public static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/c0;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Li/b0$b;


# instance fields
.field public final A:I

.field public final B:I

.field public final a:Li/q;

.field public final b:Li/l;

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

.field public final e:Li/t$b;

.field public final f:Z

.field public final g:Li/c;

.field public final h:Z

.field public final i:Z

.field public final j:Li/p;

.field public final k:Li/d;

.field public final l:Li/s;

.field public final m:Ljava/net/Proxy;

.field public final n:Ljava/net/ProxySelector;

.field public final o:Li/c;

.field public final p:Ljavax/net/SocketFactory;

.field public final q:Ljavax/net/ssl/SSLSocketFactory;

.field public final r:Ljavax/net/ssl/X509TrustManager;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/m;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljavax/net/ssl/HostnameVerifier;

.field public final v:Li/h;

.field public final w:Li/m0/k/c;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Li/b0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/b0$b;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/b0;->E:Li/b0$b;

    const/4 v0, 0x2

    new-array v1, v0, [Li/c0;

    .line 1
    sget-object v2, Li/c0;->e:Li/c0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Li/c0;->c:Li/c0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Li/m0/b;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Li/b0;->C:Ljava/util/List;

    new-array v0, v0, [Li/m;

    .line 2
    sget-object v1, Li/m;->g:Li/m;

    aput-object v1, v0, v3

    sget-object v1, Li/m;->h:Li/m;

    aput-object v1, v0, v4

    .line 3
    invoke-static {v0}, Li/m0/b;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Li/b0;->D:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    new-instance v0, Li/b0$a;

    invoke-direct {v0}, Li/b0$a;-><init>()V

    invoke-direct {p0, v0}, Li/b0;-><init>(Li/b0$a;)V

    return-void
.end method

.method public constructor <init>(Li/b0$a;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Li/b0$a;->a:Li/q;

    .line 3
    iput-object v0, p0, Li/b0;->a:Li/q;

    .line 4
    iget-object v0, p1, Li/b0$a;->b:Li/l;

    .line 5
    iput-object v0, p0, Li/b0;->b:Li/l;

    .line 6
    iget-object v0, p1, Li/b0$a;->c:Ljava/util/List;

    .line 7
    invoke-static {v0}, Li/m0/b;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Li/b0;->c:Ljava/util/List;

    .line 8
    iget-object v0, p1, Li/b0$a;->d:Ljava/util/List;

    .line 9
    invoke-static {v0}, Li/m0/b;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Li/b0;->d:Ljava/util/List;

    .line 10
    iget-object v0, p1, Li/b0$a;->e:Li/t$b;

    .line 11
    iput-object v0, p0, Li/b0;->e:Li/t$b;

    .line 12
    iget-boolean v0, p1, Li/b0$a;->f:Z

    .line 13
    iput-boolean v0, p0, Li/b0;->f:Z

    .line 14
    iget-object v0, p1, Li/b0$a;->g:Li/c;

    .line 15
    iput-object v0, p0, Li/b0;->g:Li/c;

    .line 16
    iget-boolean v0, p1, Li/b0$a;->h:Z

    .line 17
    iput-boolean v0, p0, Li/b0;->h:Z

    .line 18
    iget-boolean v0, p1, Li/b0$a;->i:Z

    .line 19
    iput-boolean v0, p0, Li/b0;->i:Z

    .line 20
    iget-object v0, p1, Li/b0$a;->j:Li/p;

    .line 21
    iput-object v0, p0, Li/b0;->j:Li/p;

    .line 22
    iget-object v0, p1, Li/b0$a;->k:Li/d;

    .line 23
    iput-object v0, p0, Li/b0;->k:Li/d;

    .line 24
    iget-object v0, p1, Li/b0$a;->l:Li/s;

    .line 25
    iput-object v0, p0, Li/b0;->l:Li/s;

    .line 26
    iget-object v0, p1, Li/b0$a;->m:Ljava/net/Proxy;

    .line 27
    iput-object v0, p0, Li/b0;->m:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Li/m0/j/a;->a:Li/m0/j/a;

    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, p1, Li/b0$a;->n:Ljava/net/ProxySelector;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Li/m0/j/a;->a:Li/m0/j/a;

    .line 31
    :goto_1
    iput-object v0, p0, Li/b0;->n:Ljava/net/ProxySelector;

    .line 32
    iget-object v0, p1, Li/b0$a;->o:Li/c;

    .line 33
    iput-object v0, p0, Li/b0;->o:Li/c;

    .line 34
    iget-object v0, p1, Li/b0$a;->p:Ljavax/net/SocketFactory;

    .line 35
    iput-object v0, p0, Li/b0;->p:Ljavax/net/SocketFactory;

    .line 36
    iget-object v0, p1, Li/b0$a;->s:Ljava/util/List;

    .line 37
    iput-object v0, p0, Li/b0;->s:Ljava/util/List;

    .line 38
    iget-object v1, p1, Li/b0$a;->t:Ljava/util/List;

    .line 39
    iput-object v1, p0, Li/b0;->t:Ljava/util/List;

    .line 40
    iget-object v1, p1, Li/b0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 41
    iput-object v1, p0, Li/b0;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 42
    iget v1, p1, Li/b0$a;->x:I

    .line 43
    iput v1, p0, Li/b0;->x:I

    .line 44
    iget v1, p1, Li/b0$a;->y:I

    .line 45
    iput v1, p0, Li/b0;->y:I

    .line 46
    iget v1, p1, Li/b0$a;->z:I

    .line 47
    iput v1, p0, Li/b0;->z:I

    .line 48
    iget v1, p1, Li/b0$a;->A:I

    .line 49
    iput v1, p0, Li/b0;->A:I

    .line 50
    iget v1, p1, Li/b0$a;->B:I

    .line 51
    iput v1, p0, Li/b0;->B:I

    .line 52
    iget-object v1, p1, Li/b0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_9

    .line 53
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 54
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/m;

    .line 55
    iget-boolean v1, v1, Li/m;->a:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_6

    goto :goto_4

    .line 56
    :cond_6
    sget-object v0, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 57
    sget-object v0, Li/m0/i/f;->a:Li/m0/i/f;

    .line 58
    invoke-virtual {v0}, Li/m0/i/f;->n()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Li/b0;->r:Ljavax/net/ssl/X509TrustManager;

    .line 59
    sget-object v0, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 60
    sget-object v0, Li/m0/i/f;->a:Li/m0/i/f;

    .line 61
    iget-object v1, p0, Li/b0;->r:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v1}, Li/m0/i/f;->f(Ljavax/net/ssl/X509TrustManager;)V

    .line 62
    iget-object v0, p0, Li/b0;->r:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_8

    .line 63
    :try_start_0
    sget-object v1, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 64
    sget-object v1, Li/m0/i/f;->a:Li/m0/i/f;

    .line 65
    invoke-virtual {v1}, Li/m0/i/f;->m()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    new-array v5, v2, [Ljavax/net/ssl/TrustManager;

    aput-object v0, v5, v4

    .line 66
    invoke-virtual {v1, v3, v5, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 67
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    const-string v1, "sslContext.socketFactory"

    invoke-static {v0, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    iput-object v0, p0, Li/b0;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 69
    iget-object v0, p0, Li/b0;->r:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_7

    .line 70
    sget-object v1, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 71
    sget-object v1, Li/m0/i/f;->a:Li/m0/i/f;

    .line 72
    invoke-virtual {v1, v0}, Li/m0/i/f;->b(Ljavax/net/ssl/X509TrustManager;)Li/m0/k/c;

    move-result-object v0

    .line 73
    iput-object v0, p0, Li/b0;->w:Li/m0/k/c;

    goto :goto_5

    :cond_7
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No System TLS"

    invoke-direct {v0, v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :cond_8
    invoke-static {}, Lh/o/c/g;->e()V

    throw v3

    .line 76
    :cond_9
    :goto_4
    iget-object v0, p1, Li/b0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 77
    iput-object v0, p0, Li/b0;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 78
    iget-object v0, p1, Li/b0$a;->w:Li/m0/k/c;

    .line 79
    iput-object v0, p0, Li/b0;->w:Li/m0/k/c;

    .line 80
    iget-object v0, p1, Li/b0$a;->r:Ljavax/net/ssl/X509TrustManager;

    .line 81
    iput-object v0, p0, Li/b0;->r:Ljavax/net/ssl/X509TrustManager;

    .line 82
    :goto_5
    iget-object v0, p0, Li/b0;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_a

    .line 83
    sget-object v0, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 84
    sget-object v0, Li/m0/i/f;->a:Li/m0/i/f;

    .line 85
    iget-object v1, p0, Li/b0;->q:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Li/m0/i/f;->d(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 86
    :cond_a
    iget-object p1, p1, Li/b0$a;->v:Li/h;

    .line 87
    iget-object v0, p0, Li/b0;->w:Li/m0/k/c;

    .line 88
    iget-object v1, p1, Li/h;->b:Li/m0/k/c;

    invoke-static {v1, v0}, Lh/o/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    .line 89
    :cond_b
    new-instance v1, Li/h;

    iget-object p1, p1, Li/h;->a:Ljava/util/Set;

    invoke-direct {v1, p1, v0}, Li/h;-><init>(Ljava/util/Set;Li/m0/k/c;)V

    move-object p1, v1

    .line 90
    :goto_6
    iput-object p1, p0, Li/b0;->v:Li/h;

    .line 91
    iget-object p1, p0, Li/b0;->c:Ljava/util/List;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    if-eqz p1, :cond_f

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_e

    .line 92
    iget-object p1, p0, Li/b0;->d:Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_c

    return-void

    :cond_c
    const-string p1, "Null network interceptor: "

    .line 93
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Li/b0;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance p1, Lh/f;

    invoke-direct {p1, v0}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string p1, "Null interceptor: "

    .line 95
    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Li/b0;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance p1, Lh/f;

    invoke-direct {p1, v0}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Li/e0;)Li/f;
    .locals 3

    const/4 v0, 0x0

    .line 1
    new-instance v1, Li/d0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Li/d0;-><init>(Li/b0;Li/e0;ZLh/o/c/f;)V

    .line 2
    new-instance p1, Li/m0/d/m;

    invoke-direct {p1, p0, v1}, Li/m0/d/m;-><init>(Li/b0;Li/f;)V

    .line 3
    iput-object p1, v1, Li/d0;->a:Li/m0/d/m;

    return-object v1
.end method

.method public b()Li/b0$a;
    .locals 3

    .line 1
    new-instance v0, Li/b0$a;

    .line 2
    invoke-direct {v0}, Li/b0$a;-><init>()V

    .line 3
    iget-object v1, p0, Li/b0;->a:Li/q;

    .line 4
    iput-object v1, v0, Li/b0$a;->a:Li/q;

    .line 5
    iget-object v1, p0, Li/b0;->b:Li/l;

    .line 6
    iput-object v1, v0, Li/b0$a;->b:Li/l;

    .line 7
    iget-object v1, v0, Li/b0$a;->c:Ljava/util/List;

    .line 8
    iget-object v2, p0, Li/b0;->c:Ljava/util/List;

    .line 9
    invoke-static {v1, v2}, Lc/a/a/b/g/h;->d(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 10
    iget-object v1, v0, Li/b0$a;->d:Ljava/util/List;

    .line 11
    iget-object v2, p0, Li/b0;->d:Ljava/util/List;

    .line 12
    invoke-static {v1, v2}, Lc/a/a/b/g/h;->d(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 13
    iget-object v1, p0, Li/b0;->e:Li/t$b;

    .line 14
    iput-object v1, v0, Li/b0$a;->e:Li/t$b;

    .line 15
    iget-boolean v1, p0, Li/b0;->f:Z

    .line 16
    iput-boolean v1, v0, Li/b0$a;->f:Z

    .line 17
    iget-object v1, p0, Li/b0;->g:Li/c;

    .line 18
    iput-object v1, v0, Li/b0$a;->g:Li/c;

    .line 19
    iget-boolean v1, p0, Li/b0;->h:Z

    .line 20
    iput-boolean v1, v0, Li/b0$a;->h:Z

    .line 21
    iget-boolean v1, p0, Li/b0;->i:Z

    .line 22
    iput-boolean v1, v0, Li/b0$a;->i:Z

    .line 23
    iget-object v1, p0, Li/b0;->j:Li/p;

    .line 24
    iput-object v1, v0, Li/b0$a;->j:Li/p;

    .line 25
    iget-object v1, p0, Li/b0;->k:Li/d;

    .line 26
    iput-object v1, v0, Li/b0$a;->k:Li/d;

    .line 27
    iget-object v1, p0, Li/b0;->l:Li/s;

    .line 28
    iput-object v1, v0, Li/b0$a;->l:Li/s;

    .line 29
    iget-object v1, p0, Li/b0;->m:Ljava/net/Proxy;

    .line 30
    iput-object v1, v0, Li/b0$a;->m:Ljava/net/Proxy;

    .line 31
    iget-object v1, p0, Li/b0;->n:Ljava/net/ProxySelector;

    .line 32
    iput-object v1, v0, Li/b0$a;->n:Ljava/net/ProxySelector;

    .line 33
    iget-object v1, p0, Li/b0;->o:Li/c;

    .line 34
    iput-object v1, v0, Li/b0$a;->o:Li/c;

    .line 35
    iget-object v1, p0, Li/b0;->p:Ljavax/net/SocketFactory;

    .line 36
    iput-object v1, v0, Li/b0$a;->p:Ljavax/net/SocketFactory;

    .line 37
    iget-object v1, p0, Li/b0;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 38
    iput-object v1, v0, Li/b0$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 39
    iget-object v1, p0, Li/b0;->r:Ljavax/net/ssl/X509TrustManager;

    .line 40
    iput-object v1, v0, Li/b0$a;->r:Ljavax/net/ssl/X509TrustManager;

    .line 41
    iget-object v1, p0, Li/b0;->s:Ljava/util/List;

    .line 42
    iput-object v1, v0, Li/b0$a;->s:Ljava/util/List;

    .line 43
    iget-object v1, p0, Li/b0;->t:Ljava/util/List;

    .line 44
    iput-object v1, v0, Li/b0$a;->t:Ljava/util/List;

    .line 45
    iget-object v1, p0, Li/b0;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 46
    iput-object v1, v0, Li/b0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 47
    iget-object v1, p0, Li/b0;->v:Li/h;

    .line 48
    iput-object v1, v0, Li/b0$a;->v:Li/h;

    .line 49
    iget-object v1, p0, Li/b0;->w:Li/m0/k/c;

    .line 50
    iput-object v1, v0, Li/b0$a;->w:Li/m0/k/c;

    .line 51
    iget v1, p0, Li/b0;->x:I

    .line 52
    iput v1, v0, Li/b0$a;->x:I

    .line 53
    iget v1, p0, Li/b0;->y:I

    .line 54
    iput v1, v0, Li/b0$a;->y:I

    .line 55
    iget v1, p0, Li/b0;->z:I

    .line 56
    iput v1, v0, Li/b0$a;->z:I

    .line 57
    iget v1, p0, Li/b0;->A:I

    .line 58
    iput v1, v0, Li/b0$a;->A:I

    .line 59
    iget v1, p0, Li/b0;->B:I

    .line 60
    iput v1, v0, Li/b0$a;->B:I

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
