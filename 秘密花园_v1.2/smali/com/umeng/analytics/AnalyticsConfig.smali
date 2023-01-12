.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode; = null

.field public static CATCH_EXCEPTION:Z = false

.field public static CHANGE_CATCH_EXCEPTION_NOTALLOW:Z = false

.field public static CLEAR_EKV_BL:Z = false

.field public static CLEAR_EKV_WL:Z = false

.field public static GPU_RENDERER:Ljava/lang/String; = ""

.field public static GPU_VENDER:Ljava/lang/String; = ""

.field public static a:[D

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static kContinueSessionMillis:J

.field public static mWrapperType:Ljava/lang/String;

.field public static mWrapperVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CHANGE_CATCH_EXCEPTION_NOTALLOW:Z

    const/4 v1, 0x1

    .line 3
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    const-wide/16 v1, 0x7530

    .line 4
    sput-wide v1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 5
    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_BL:Z

    .line 6
    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_WL:Z

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0

    .line 6
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 7
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/z;->a(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/z;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const-string p1, "MobclickAgent.setSecret\u65b9\u6cd5\u53c2\u6570secretkey\u4e0d\u80fd\u4e3anull\uff0c\u4e5f\u4e0d\u80fd\u4e3a\u7a7a\u5b57\u7b26\u4e32\u3002|secretkey\u53c2\u6570\u5fc5\u987b\u662f\u975e\u7a7a \u5b57\u7b26\u4e32\u3002"

    const-string v0, "\\|"

    .line 5
    invoke-static {p1, p0, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocation()[D
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-object v0
.end method

.method public static getSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/z;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static getVerticalType(Landroid/content/Context;)I
    .locals 1

    .line 1
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/z;->d()I

    move-result p0

    sput p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 3
    :cond_0
    sget p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    return p0
.end method
