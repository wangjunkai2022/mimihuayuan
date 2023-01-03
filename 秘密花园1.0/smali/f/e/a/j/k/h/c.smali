.class public Lf/e/a/j/k/h/c;
.super Ljava/lang/Object;
.source "FL2Data2Source.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "eAQFDQgWfVIHB2cIDRgADg=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getDataSourceFactory()Lf/i/a/a/l1/m$a;
    .locals 4

    .line 1
    new-instance v0, Li/b0;

    invoke-direct {v0}, Li/b0;-><init>()V

    invoke-virtual {v0}, Li/b0;->b()Li/b0$a;

    move-result-object v0

    new-instance v1, Lf/e/a/j/k/h/d;

    invoke-direct {v1}, Lf/e/a/j/k/h/d;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Li/b0$a;->a(Li/y;)Li/b0$a;

    sget-object v1, Lf/e/a/j/k/h/a;->a:Lf/e/a/j/k/h/a;

    .line 3
    iput-object v1, v0, Li/b0$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 4
    new-instance v1, Li/b0;

    invoke-direct {v1, v0}, Li/b0;-><init>(Li/b0$a;)V

    .line 5
    new-instance v0, Lf/i/a/a/a1/a/b;

    const-string v2, "ewMVAkRGDh1LVRpWSFo="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lf/i/a/a/l1/r;

    invoke-direct {v3}, Lf/i/a/a/l1/r;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lf/i/a/a/a1/a/b;-><init>(Li/f$a;Ljava/lang/String;Lf/i/a/a/l1/i0;)V

    return-object v0
.end method
