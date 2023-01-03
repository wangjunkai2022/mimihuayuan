.class public Lcom/umeng/commonsdk/proguard/b;
.super Ljava/lang/Object;
.source "UMSysLocation.java"


# static fields
.field public static final a:Ljava/lang/String; = "UMSysLocation"

.field public static final c:I = 0x2710


# instance fields
.field public b:Landroid/location/LocationManager;

.field public d:Landroid/content/Context;

.field public e:Lcom/umeng/commonsdk/proguard/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    .line 3
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/b;->d:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/b;->b:Landroid/location/LocationManager;

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "destroy"

    aput-object v3, v1, v2

    .line 22
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/b;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/b;->b:Landroid/location/LocationManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 25
    :try_start_2
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/b;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/umeng/commonsdk/proguard/d;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "UMSysLocation"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getSystemLocation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 2
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/b;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/b;->e:Lcom/umeng/commonsdk/proguard/d;

    .line 4
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/b;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/b;->d:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/utils/UMUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/b;->e:Lcom/umeng/commonsdk/proguard/d;

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/b;->e:Lcom/umeng/commonsdk/proguard/d;

    invoke-virtual {p1, v3}, Lcom/umeng/commonsdk/proguard/d;->a(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    .line 9
    :cond_3
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/umeng/commonsdk/proguard/b;->b:Landroid/location/LocationManager;

    if-eqz v5, :cond_7

    .line 10
    iget-object v5, p0, Lcom/umeng/commonsdk/proguard/b;->b:Landroid/location/LocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    .line 11
    iget-object v6, p0, Lcom/umeng/commonsdk/proguard/b;->b:Landroid/location/LocationManager;

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v5, :cond_4

    if-eqz v6, :cond_6

    :cond_4
    const-string v5, "UMSysLocation"

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "getLastKnownLocation(LocationManager.PASSIVE_PROVIDER)"

    aput-object v7, v6, v4

    .line 12
    invoke-static {v5, v6}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_5

    .line 13
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/b;->b:Landroid/location/LocationManager;

    const-string v2, "passive"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/b;->b:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/b;->e:Lcom/umeng/commonsdk/proguard/d;

    invoke-virtual {v2, v0}, Lcom/umeng/commonsdk/proguard/d;->a(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v2, "UMSysLocation"

    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :try_start_3
    invoke-virtual {p1, v3}, Lcom/umeng/commonsdk/proguard/d;->a(Landroid/location/Location;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 18
    :try_start_4
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/b;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 19
    :goto_2
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/b;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    .line 21
    :cond_8
    :goto_4
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
