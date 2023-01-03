.class public Lf/e/a/l/d;
.super Ljava/lang/Object;
.source "Tv91Data2Source.java"

# interfaces
.implements Lchuangyuan/ycj/videolibrary/listener/DataSourceListener;


# instance fields
.field public a:Landroid/content/Context;


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

    .line 2
    iput-object p1, p0, Lf/e/a/l/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDataSourceFactory()Lf/i/a/a/l1/m$a;
    .locals 3

    .line 1
    new-instance v0, Lf/i/a/a/l1/t;

    iget-object v1, p0, Lf/e/a/l/d;->a:Landroid/content/Context;

    const-string v2, "DlM3MjsfWEoWFBtVVltVSx8uCgoeCwJyHQJGCBEOQ10ZUk1VQlN8Sxw2WAYBDxEnXgBMVkVKFwU="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lf/i/a/a/l1/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
