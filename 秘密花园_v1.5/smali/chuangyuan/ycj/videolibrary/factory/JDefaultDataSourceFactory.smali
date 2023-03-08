.class public final Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;
.super Ljava/lang/Object;
.source "JDefaultDataSourceFactory.java"

# interfaces
.implements Lf/i/a/a/l1/m$a;


# instance fields
.field public final baseDataSourceFactory:Lf/i/a/a/l1/m$a;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lf/i/a/a/m1/h0;->N(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;->context:Landroid/content/Context;

    .line 4
    new-instance v1, Lf/i/a/a/l1/t;

    invoke-direct {v1, p1, v0}, Lf/i/a/a/l1/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;->baseDataSourceFactory:Lf/i/a/a/l1/m$a;

    return-void
.end method


# virtual methods
.method public createDataSource()Lf/i/a/a/l1/m;
    .locals 4

    .line 1
    new-instance v0, Lf/i/a/a/l1/s;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;->context:Landroid/content/Context;

    new-instance v2, Lf/i/a/a/l1/r;

    invoke-direct {v2}, Lf/i/a/a/l1/r;-><init>()V

    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/factory/JDefaultDataSourceFactory;->baseDataSourceFactory:Lf/i/a/a/l1/m$a;

    invoke-interface {v3}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object v3

    .line 2
    invoke-direct {v0, v1, v3}, Lf/i/a/a/l1/s;-><init>(Landroid/content/Context;Lf/i/a/a/l1/m;)V

    .line 3
    iget-object v1, v0, Lf/i/a/a/l1/s;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
