.class public Lcom/tencent/smtt/sdk/TbsLogReport;
.super Ljava/lang/Object;
.source "TbsLogReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsLogReport$a;,
        Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;,
        Lcom/tencent/smtt/sdk/TbsLogReport$EventType;
    }
.end annotation


# static fields
.field public static a:Lcom/tencent/smtt/sdk/TbsLogReport;


# instance fields
.field public b:Landroid/os/Handler;

.field public c:Landroid/content/Context;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    .line 5
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "TbsLogReportThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Lcom/tencent/smtt/sdk/TbsLogReport$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$1;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    .line 61
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 62
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "|"

    invoke-static {v0, p1, v1}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()Lorg/json/JSONArray;
    .locals 5

    .line 53
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 55
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_1

    .line 57
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 58
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-le v3, v4, :cond_1

    .line 59
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 60
    :catch_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object v0
.end method

.method private a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    .locals 6

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Lcom/tencent/smtt/sdk/l;->a()Lcom/tencent/smtt/sdk/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/l;->i(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 13
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "ISO8859-1"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    .line 14
    :goto_0
    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.tencent.mm"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    const-string v2, "com.tencent.mm.BuildInfo.CLIENT_VERSION"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :goto_1
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->b(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->c(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->d(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->e(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->f(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->g(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->h(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->i(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->j(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->k(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->l(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->m(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->n(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v1, p2, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->a:I

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->o(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->p(Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object p2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tbs_download_version"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object p2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "4.3.0.1148_43697"

    .line 39
    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 42
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a()Lorg/json/JSONArray;

    move-result-object v1

    .line 43
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 44
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    const/4 v3, 0x4

    :goto_2
    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 45
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string v4, "upload"

    const-string v5, "JSONArray transform error!"

    .line 46
    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    move-object v1, v2

    .line 47
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 49
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    iget-boolean p2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    if-nez p2, :cond_3

    sget-object p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_LOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    iget p2, p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->a:I

    if-eq p1, p2, :cond_4

    .line 52
    :cond_3
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->b()V

    :cond_4
    return-void
.end method

.method private a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V
    .locals 2

    .line 3
    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    .line 5
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/sdk/TbsListener;->onInstallFinish(I)V

    .line 6
    invoke-virtual {p0, p3, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/smtt/sdk/TbsLogReport;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/smtt/sdk/TbsLogReport;ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    return-void
.end method

.method private b(J)Ljava/lang/String;
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 5

    .line 2
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "upload"

    const-string v1, "[TbsLogReport.sendLogReportRequest] -- SET_SENDREQUEST_AND_UPLOAD is false"

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "TbsDownload"

    const-string v1, "[TbsApkDownloadStat.reportDownloadStat]"

    .line 4
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->a()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloadStat.reportDownloadStat] jsonArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/n;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/n;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/tencent/smtt/utils/n;->c()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v3, Lcom/tencent/smtt/sdk/TbsLogReport$3;

    invoke-direct {v3, p0}, Lcom/tencent/smtt/sdk/TbsLogReport$3;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Lcom/tencent/smtt/utils/g;->a(Ljava/lang/String;[BLcom/tencent/smtt/utils/g$a;Z)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDownloadStat.reportDownloadStat] response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " testcase: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string v1, "[TbsApkDownloadStat.reportDownloadStat] no data"

    .line 13
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/smtt/sdk/TbsLogReport;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tbs_download_upload"

    .line 2
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    const-string v1, "tbs_download_stat"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/smtt/sdk/TbsLogReport;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/smtt/sdk/TbsLogReport;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/TbsLogReport;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/smtt/sdk/TbsLogReport;->a:Lcom/tencent/smtt/sdk/TbsLogReport;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dailyReport()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x258

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    iget p1, p1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->a:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "[TbsLogReport.eventReport] error, message="

    .line 7
    invoke-static {p2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "upload"

    invoke-static {p2, p1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getShouldUploadEventReport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    return v0
.end method

.method public reportTbsLog()V
    .locals 11

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "upload"

    const-string v1, "[TbsLogReport.reportTbsLog] -- SET_SENDREQUEST_AND_UPLOAD is false"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->getTbsLogFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/tencent/smtt/utils/h;->a()Lcom/tencent/smtt/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/h;->b()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/smtt/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/smtt/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 10
    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/utils/h;->a()Lcom/tencent/smtt/utils/h;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tencent/smtt/utils/h;->a([B)[B

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/tencent/smtt/utils/h;->a()Lcom/tencent/smtt/utils/h;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/smtt/utils/h;->a([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    invoke-static {v2}, Lcom/tencent/smtt/utils/h;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v3}, Lcom/tencent/smtt/utils/h;->b([B)Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/smtt/utils/n;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/smtt/utils/n;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&aid="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    .line 16
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Charset"

    const-string v5, "UTF-8"

    .line 17
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v4, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/utils/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "QUA2"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 19
    :try_start_1
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/tencent/smtt/utils/f;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v6, Lcom/tencent/smtt/sdk/TbsLogReport$a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/tencent/smtt/utils/f;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/tbslog_temp.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/tencent/smtt/sdk/TbsLogReport$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/TbsLogReport$a;->a()V

    .line 22
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/tencent/smtt/utils/f;->a:Ljava/lang/String;

    const-string v7, "tbslog_temp.zip"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v7, 0x2000

    :try_start_3
    new-array v7, v7, [B

    .line 24
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :goto_0
    :try_start_4
    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 26
    invoke-virtual {v8, v7, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 28
    invoke-static {}, Lcom/tencent/smtt/utils/h;->a()Lcom/tencent/smtt/utils/h;

    move-result-object v7

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/tencent/smtt/utils/h;->a([B)[B

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 29
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 30
    :catch_1
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_5

    :catch_2
    move-exception v7

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v8, v5

    goto :goto_6

    :catch_3
    move-exception v7

    move-object v8, v5

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v8, v5

    goto :goto_7

    :catch_4
    move-exception v6

    move-object v7, v6

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v0, v5

    move-object v8, v0

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v7, v0

    move-object v0, v5

    :goto_1
    move-object v6, v5

    move-object v8, v6

    .line 31
    :goto_2
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v6, :cond_4

    .line 32
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    :catch_6
    nop

    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 33
    :try_start_9
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_4

    :catch_7
    nop

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 34
    :catch_8
    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    const-string v0, "&ek="

    .line 35
    invoke-static {v2, v0, v1}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/tencent/smtt/sdk/TbsLogReport$2;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/TbsLogReport$2;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport;)V

    invoke-static {v0, v3, v5, v1, v4}, Lcom/tencent/smtt/utils/g;->a(Ljava/lang/String;Ljava/util/Map;[BLcom/tencent/smtt/utils/g$a;Z)Ljava/lang/String;

    return-void

    :catchall_3
    move-exception v1

    :goto_6
    move-object v5, v6

    :goto_7
    if-eqz v5, :cond_7

    .line 37
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    nop

    :cond_7
    :goto_8
    if-eqz v8, :cond_8

    .line 38
    :try_start_b
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_9

    :catch_a
    nop

    :cond_8
    :goto_9
    if-eqz v0, :cond_9

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_9
    throw v1
.end method

.method public setInstallErrorCode(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_INSTALL:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public setInstallErrorCode(ILjava/lang/String;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V
    .locals 3

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdd

    if-eq p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error occured in installation, errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "TbsDownload"

    invoke-static {v2, v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, v0, p3}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public setInstallErrorCode(ILjava/lang/Throwable;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/Throwable;)V

    .line 8
    sget-object p2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_INSTALL:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->a(ILcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;Lcom/tencent/smtt/sdk/TbsLogReport$EventType;)V

    return-void
.end method

.method public setLoadErrorCode(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setEventTime(J)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setFailDetail(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_LOAD:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    return-void
.end method

.method public setLoadErrorCode(ILjava/lang/Throwable;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "msg: "

    .line 6
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "NULL"

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V

    return-void
.end method

.method public setShouldUploadEventReport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport;->d:Z

    return-void
.end method

.method public tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;-><init>(Lcom/tencent/smtt/sdk/TbsLogReport$1;)V

    return-object v0
.end method
