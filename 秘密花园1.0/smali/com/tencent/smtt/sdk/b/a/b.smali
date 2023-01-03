.class public Lcom/tencent/smtt/sdk/b/a/b;
.super Ljava/lang/Object;
.source "BrowsingActivityInfo.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/pm/ResolveInfo;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/smtt/sdk/b/a/b;->f:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/tencent/smtt/sdk/b/a/b;->b:Landroid/content/pm/ResolveInfo;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->d:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/tencent/smtt/sdk/b/a/b;->f:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->b:Landroid/content/pm/ResolveInfo;

    .line 12
    iput-object p2, p0, Lcom/tencent/smtt/sdk/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object p3, p0, Lcom/tencent/smtt/sdk/b/a/b;->d:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/tencent/smtt/sdk/b/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "com.tencent.mtt"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string p0, "application_icon"

    .line 10
    invoke-static {p0}, Lcom/tencent/smtt/sdk/b/a/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    return-object v1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 13
    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 14
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 15
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 16
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 17
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    :try_start_2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v2, v3, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 19
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 20
    invoke-static {p0, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "e = "

    .line 21
    invoke-static {p1, p0}, Lf/b/a/a/a;->y(Ljava/lang/String;Ljava/lang/Exception;)V

    :catch_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/Map;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/b/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/b/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->b:Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/b;->b:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->b:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method public b()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/b;->b:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/b;->b:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/b;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method
