.class public Lf/e/a/l/b;
.super Ljava/lang/Object;
.source "Data2Source.java"

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


# virtual methods
.method public getDataSourceFactory()Lf/i/a/a/l1/m$a;
    .locals 7

    .line 1
    new-instance v6, Lf/i/a/a/l1/v;

    const-string v0, "ewMVAkRGDh1LVRpWSFo="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lf/i/a/a/l1/v;-><init>(Ljava/lang/String;Lf/i/a/a/l1/i0;IIZ)V

    return-object v6
.end method
