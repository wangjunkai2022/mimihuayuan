.class public Lcom/tencent/smtt/sdk/a/c;
.super Ljava/lang/Object;
.source "MttLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/a/c$b;,
        Lcom/tencent/smtt/sdk/a/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/WebView;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/smtt/sdk/WebView;",
            ")I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    .line 45
    invoke-static {v0, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v0, 0x2

    .line 46
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    return v0

    .line 47
    :cond_2
    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/c$a;

    move-result-object v1

    .line 48
    iget v2, v1, Lcom/tencent/smtt/sdk/a/c$a;->a:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    if-ne v2, v3, :cond_3

    return v4

    :cond_3
    const/16 v3, 0x21

    if-ne v2, v0, :cond_4

    .line 49
    iget v2, v1, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    if-ge v2, v3, :cond_4

    const/4 p0, 0x5

    return p0

    .line 50
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    iget v5, v1, Lcom/tencent/smtt/sdk/a/c$a;->a:I

    const-string v6, "com.tencent.QQBrowser.action.VIEW"

    if-ne v5, v0, :cond_7

    .line 52
    iget v0, v1, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    const-string v5, "com.tencent.mtt"

    if-lt v0, v3, :cond_5

    const/16 v3, 0x27

    if-gt v0, v3, :cond_5

    const-string v0, "com.tencent.mtt.MainActivity"

    .line 53
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 54
    :cond_5
    iget v0, v1, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    const/16 v3, 0x28

    if-lt v0, v3, :cond_6

    const/16 v3, 0x2d

    if-gt v0, v3, :cond_6

    const-string v0, "com.tencent.mtt.SplashActivity"

    .line 55
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 56
    :cond_6
    iget v0, v1, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    const/16 v1, 0x2e

    if-lt v0, v1, :cond_c

    .line 57
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 59
    iget-object v1, v0, Lcom/tencent/smtt/sdk/a/c$b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 60
    iget-object v1, v0, Lcom/tencent/smtt/sdk/a/c$b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/a/c$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    if-ne v5, v3, :cond_9

    .line 61
    iget v1, v1, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    const-string v5, "com.tencent.qbx5"

    if-ne v1, v3, :cond_8

    const-string v0, "com.tencent.qbx5.MainActivity"

    .line 62
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_8
    if-ne v1, v0, :cond_c

    const-string v0, "com.tencent.qbx5.SplashActivity"

    .line 63
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_9
    if-nez v5, :cond_b

    .line 64
    iget v0, v1, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    const/4 v3, 0x6

    if-lt v0, v4, :cond_a

    if-gt v0, v3, :cond_a

    const-string v0, "com.tencent.qbx"

    const-string v1, "com.tencent.qbx.SplashActivity"

    .line 65
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :cond_a
    iget v0, v1, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    if-le v0, v3, :cond_c

    .line 67
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 69
    iget-object v1, v0, Lcom/tencent/smtt/sdk/a/c$b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 70
    iget-object v1, v0, Lcom/tencent/smtt/sdk/a/c$b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/a/c$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 71
    :cond_b
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 73
    iget-object v1, v0, Lcom/tencent/smtt/sdk/a/c$b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 74
    iget-object v1, v0, Lcom/tencent/smtt/sdk/a/c$b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/a/c$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    :cond_c
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p2, :cond_e

    .line 76
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 77
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 80
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_e
    :try_start_1
    const-string p1, "loginType"

    .line 81
    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/c;->d(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 82
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_f

    .line 83
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    const-string p2, "AnchorPoint"

    .line 84
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getContentWidth()I

    move-result p2

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getContentHeight()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    const-string p2, "ContentSize"

    .line 86
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    :cond_f
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v4

    :catch_1
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/WebView;",
            ")I"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.tencent.mtt"

    .line 39
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v3, 0x92ba8

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_1
    const-string v3, "UTF-8"

    .line 41
    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    move-object p1, v1

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, ",encoded=1"

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    const-string v2, "mttbrowser://url="

    const-string v3, ",product="

    const-string v4, "TBS"

    .line 42
    invoke-static {v0, v2, p1, v3, v4}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ",packagename="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",from="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",version="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "4.3.0.1148"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p4}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/WebView;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/c$a;
    .locals 14

    const-string v0, "com.tencent.mtt.x86"

    const-string v1, "com.tencent.qbx5"

    const-string v2, "com.tencent.qbx"

    const-string v3, ""

    const-string v4, "\\."

    const-string v5, "ADRQB_"

    const-string v6, "com.tencent.mtt"

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "x5_proxy_setting"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "qb_install_status"

    .line 102
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 103
    new-instance v8, Lcom/tencent/smtt/sdk/a/c$a;

    invoke-direct {v8}, Lcom/tencent/smtt/sdk/a/c$a;-><init>()V

    if-eqz v7, :cond_0

    return-object v8

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v10, 0x0

    const/4 v11, 0x2

    .line 105
    :try_start_1
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 106
    iput v11, v8, Lcom/tencent/smtt/sdk/a/c$a;->a:I

    .line 107
    iput-object v6, v8, Lcom/tencent/smtt/sdk/a/c$a;->e:Ljava/lang/String;

    .line 108
    iput-object v5, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 109
    iget v12, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    const v13, 0x668a0

    if-le v12, v13, :cond_1

    .line 110
    iget v12, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v12, v8, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    .line 111
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;

    .line 112
    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v12, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/tencent/smtt/sdk/a/c$a;->d:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    return-object v8

    .line 113
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {v7, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 114
    iput v9, v8, Lcom/tencent/smtt/sdk/a/c$a;->a:I

    .line 115
    iput-object v2, v8, Lcom/tencent/smtt/sdk/a/c$a;->e:Ljava/lang/String;

    const-string v2, "ADRQBX_"

    .line 116
    iput-object v2, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 117
    :catch_1
    :try_start_3
    invoke-virtual {v7, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    const/4 v2, 0x1

    .line 118
    iput v2, v8, Lcom/tencent/smtt/sdk/a/c$a;->a:I

    .line 119
    iput-object v1, v8, Lcom/tencent/smtt/sdk/a/c$a;->e:Ljava/lang/String;

    const-string v1, "ADRQBX5_"

    .line 120
    iput-object v1, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_0

    .line 121
    :catch_2
    :try_start_4
    invoke-virtual {v7, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 122
    iput-object v6, v8, Lcom/tencent/smtt/sdk/a/c$a;->e:Ljava/lang/String;

    .line 123
    iput v11, v8, Lcom/tencent/smtt/sdk/a/c$a;->a:I

    .line 124
    iput-object v5, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_0

    .line 125
    :catch_3
    :try_start_5
    invoke-virtual {v7, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 126
    iput-object v0, v8, Lcom/tencent/smtt/sdk/a/c$a;->e:Ljava/lang/String;

    .line 127
    iput v11, v8, Lcom/tencent/smtt/sdk/a/c$a;->a:I

    .line 128
    iput-object v5, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    :try_start_6
    const-string v0, "http://mdc.html5.qq.com/mh?channel_id=50079&u="

    .line 129
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/c$b;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/tencent/smtt/sdk/a/c$b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/tencent/smtt/sdk/a/c$b;->b:Ljava/lang/String;

    invoke-virtual {v7, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 132
    :try_start_7
    iget-object p0, p0, Lcom/tencent/smtt/sdk/a/c$b;->b:Ljava/lang/String;

    iput-object p0, v8, Lcom/tencent/smtt/sdk/a/c$a;->e:Ljava/lang/String;

    .line 133
    iput v11, v8, Lcom/tencent/smtt/sdk/a/c$a;->a:I

    .line 134
    iput-object v5, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    move-object v10, v0

    goto :goto_0

    :catch_6
    nop

    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    .line 135
    :try_start_8
    iget p0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p0, v8, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/tencent/smtt/sdk/a/c$a;->c:Ljava/lang/String;

    .line 137
    iget-object p0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/tencent/smtt/sdk/a/c$a;->d:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_3
    return-object v8
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/c$b;
    .locals 3

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    .line 92
    :cond_0
    new-instance p1, Lcom/tencent/smtt/sdk/a/c$b;

    invoke-direct {p1, v0}, Lcom/tencent/smtt/sdk/a/c$b;-><init>(Lcom/tencent/smtt/sdk/a/c$1;)V

    .line 93
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 94
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.tencent.mtt"

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/smtt/sdk/a/c$b;->a:Ljava/lang/String;

    .line 97
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p0, p1, Lcom/tencent/smtt/sdk/a/c$b;->b:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v2, "com.tencent.qbx"

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/tencent/smtt/sdk/a/c$b;->a:Ljava/lang/String;

    .line 100
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/smtt/sdk/a/c$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static a(Landroid/content/Context;JJ)Z
    .locals 5

    .line 143
    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/c$a;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/a/c$a;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v2, p1

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 146
    :cond_0
    :goto_0
    iget p0, p0, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    int-to-long p0, p0

    cmp-long p2, p0, p3

    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.QQBrowser.action.sdk.document"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 2
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p4, "key_reader_sdk_id"

    const/4 v2, 0x3

    .line 8
    invoke-virtual {v1, p4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "key_reader_sdk_type"

    .line 9
    invoke-virtual {v1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p4, 0x1

    if-nez p2, :cond_2

    const-string p2, "key_reader_sdk_path"

    .line 10
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    if-ne p2, p4, :cond_3

    const-string p2, "key_reader_sdk_url"

    .line 11
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    const-string p2, "key_reader_sdk_format"

    .line 12
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt p2, v2, :cond_4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_4

    .line 14
    invoke-virtual {v1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    :cond_4
    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_5

    return v0

    .line 16
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtt/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "loginType"

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/smtt/sdk/a/c;->d(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p5, :cond_6

    const-string p1, "key_reader_sdk_extrals"

    .line 18
    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 19
    :cond_6
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p4

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "video/*"

    .line 25
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 26
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    :try_start_0
    const-string v1, "loginType"

    .line 31
    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/c;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mtt"

    const-string v3, "com.tencent.mtt.browser.video.H5VideoThrdcallActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 34
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p2

    :cond_2
    :goto_2
    return p1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v1, :cond_1

    if-lez v3, :cond_1

    if-le v1, v3, :cond_1

    return v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/c$a;

    move-result-object p0

    .line 2
    iget p0, p0, Lcom/tencent/smtt/sdk/a/c$a;->a:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/c$a;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/a/c$a;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v4, 0x5b935c

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget p0, p0, Lcom/tencent/smtt/sdk/a/c$a;->b:I

    const v2, 0x92d9c

    if-lt p0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v0, "com.tencent.mobileqq"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xd

    goto :goto_0

    :cond_0
    const-string v0, "com.qzone"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xe

    goto :goto_0

    :cond_1
    const-string v0, "com.tencent.WBlog"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0xf

    goto :goto_0

    :cond_2
    const-string v0, "com.tencent.mm"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x18

    goto :goto_0

    :cond_3
    const/16 p0, 0x1a

    :goto_0
    return p0
.end method
