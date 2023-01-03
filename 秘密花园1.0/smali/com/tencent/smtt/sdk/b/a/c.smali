.class public Lcom/tencent/smtt/sdk/b/a/c;
.super Landroid/app/Dialog;
.source "TBSActivityPicker.java"


# static fields
.field public static a:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static l:F = -1.0f


# instance fields
.field public b:Landroid/widget/ListView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Ljava/lang/String;

.field public g:Lcom/tencent/smtt/sdk/b/a/a;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/content/Intent;

.field public k:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const v0, 0x103000b

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "*/*"

    .line 2
    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->k:Landroid/content/SharedPreferences;

    .line 4
    iput-object p6, p0, Lcom/tencent/smtt/sdk/b/a/c;->i:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p6

    const/high16 v0, 0x10000

    .line 6
    invoke-virtual {p6, p3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p6

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 7
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/a/c;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->isDefaultDialog:Z

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.rtxlite"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p6, :cond_2

    .line 10
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p6

    if-nez p6, :cond_3

    .line 11
    :cond_2
    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->isDefaultDialog:Z

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p0, p6}, Lcom/tencent/smtt/sdk/b/a/c;->b(Landroid/content/Context;)V

    .line 13
    iput-object p2, p0, Lcom/tencent/smtt/sdk/b/a/c;->f:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/tencent/smtt/sdk/b/a/c;->j:Landroid/content/Intent;

    .line 15
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p2, Lcom/tencent/smtt/sdk/b/a/c;->a:Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    const-string p3, "tbs_file_open_dialog_config"

    .line 16
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/c;->k:Landroid/content/SharedPreferences;

    .line 17
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 18
    iput-object p5, p0, Lcom/tencent/smtt/sdk/b/a/c;->h:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 8
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v6, 0x438c0000    # 280.0f

    invoke-virtual {v0, v6}, Lcom/tencent/smtt/sdk/b/a/c;->a(F)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 13
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 14
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v5, 0x1

    .line 16
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->c:Landroid/widget/TextView;

    .line 18
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42820000    # 65.0f

    invoke-virtual {v0, v8}, Lcom/tencent/smtt/sdk/b/a/c;->a(F)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x0

    .line 19
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 20
    iget-object v10, v0, Lcom/tencent/smtt/sdk/b/a/c;->c:Landroid/widget/TextView;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 21
    iget-object v10, v0, Lcom/tencent/smtt/sdk/b/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->c:Landroid/widget/TextView;

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v0, v10}, Lcom/tencent/smtt/sdk/b/a/c;->a(F)I

    move-result v12

    invoke-virtual {v6, v12, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->c:Landroid/widget/TextView;

    const/16 v12, 0x45

    const/16 v13, 0xc0

    const/16 v14, 0x1a

    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->f:Ljava/lang/String;

    .line 26
    iget-object v10, v0, Lcom/tencent/smtt/sdk/b/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 31
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v10, 0x3d

    .line 32
    invoke-static {v10, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 33
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->b:Landroid/widget/ListView;

    .line 35
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f800000    # 1.0f

    .line 36
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 37
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 38
    iget-object v11, v0, Lcom/tencent/smtt/sdk/b/a/c;->b:Landroid/widget/ListView;

    invoke-virtual {v11, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->b:Landroid/widget/ListView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const/16 v13, 0x29

    invoke-static {v13, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v11, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->b:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 41
    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/c;->b:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 45
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-static {v10, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 47
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v9, "x5_tbs_activity_picker_btn_container"

    .line 53
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/tencent/smtt/sdk/b/a/c;->d:Landroid/widget/Button;

    .line 55
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42440000    # 49.0f

    invoke-virtual {v0, v10}, Lcom/tencent/smtt/sdk/b/a/c;->a(F)I

    move-result v11

    invoke-direct {v9, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57
    iget-object v11, v0, Lcom/tencent/smtt/sdk/b/a/c;->d:Landroid/widget/Button;

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v11, v5, [I

    const v14, 0x10100a7

    aput v14, v11, v4

    .line 59
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v13, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v15, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v11, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v11, v5, [I

    const v14, -0x10100a7

    aput v14, v11, v4

    .line 60
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v11, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v11, v0, Lcom/tencent/smtt/sdk/b/a/c;->d:Landroid/widget/Button;

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v9, v0, Lcom/tencent/smtt/sdk/b/a/c;->d:Landroid/widget/Button;

    const-string v11, "x5_tbs_wechat_activity_picker_label_always"

    invoke-static {v11}, Lcom/tencent/smtt/sdk/b/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v9, v0, Lcom/tencent/smtt/sdk/b/a/c;->d:Landroid/widget/Button;

    const/16 v11, 0x1d

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/Button;->setTextColor(I)V

    .line 64
    iget-object v9, v0, Lcom/tencent/smtt/sdk/b/a/c;->d:Landroid/widget/Button;

    const/high16 v15, 0x41880000    # 17.0f

    invoke-virtual {v9, v5, v15}, Landroid/widget/Button;->setTextSize(IF)V

    .line 65
    iget-object v9, v0, Lcom/tencent/smtt/sdk/b/a/c;->d:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    iput v8, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 69
    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0xd9

    .line 70
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 71
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/tencent/smtt/sdk/b/a/c;->e:Landroid/widget/Button;

    .line 73
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v10}, Lcom/tencent/smtt/sdk/b/a/c;->a(F)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    iget-object v7, v0, Lcom/tencent/smtt/sdk/b/a/c;->e:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v7, v5, [I

    const v8, 0x10100a7

    aput v8, v7, v4

    .line 77
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v13, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v7, v5, [I

    aput v14, v7, v4

    .line 78
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v4, v0, Lcom/tencent/smtt/sdk/b/a/c;->e:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, v0, Lcom/tencent/smtt/sdk/b/a/c;->e:Landroid/widget/Button;

    const-string v4, "x5_tbs_wechat_activity_picker_label_once"

    invoke-static {v4}, Lcom/tencent/smtt/sdk/b/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, v0, Lcom/tencent/smtt/sdk/b/a/c;->e:Landroid/widget/Button;

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 82
    iget-object v1, v0, Lcom/tencent/smtt/sdk/b/a/c;->e:Landroid/widget/Button;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v1, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 83
    iget-object v1, v0, Lcom/tencent/smtt/sdk/b/a/c;->e:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method public static synthetic a(Lcom/tencent/smtt/sdk/b/a/c;)Lcom/tencent/smtt/sdk/b/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/smtt/sdk/b/a/c;->g:Lcom/tencent/smtt/sdk/b/a/a;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/smtt/sdk/b/a/c;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/smtt/sdk/b/a/c;->j:Landroid/content/Intent;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 6
    sget v0, Lcom/tencent/smtt/sdk/b/a/c;->l:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const-string v0, "window"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 8
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 9
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 10
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/tencent/smtt/sdk/b/a/c;->l:F

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/tencent/smtt/sdk/b/a/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/smtt/sdk/b/a/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->g:Lcom/tencent/smtt/sdk/b/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/b/a/a;->a()Lcom/tencent/smtt/sdk/b/a/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 4
    new-instance v0, Lcom/tencent/smtt/sdk/b/a/a;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/b/a/c;->j:Landroid/content/Intent;

    new-instance v4, Lcom/tencent/smtt/sdk/b/a/b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "application_icon"

    invoke-static {v6}, Lcom/tencent/smtt/sdk/b/a/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v7, "QQ\u6d4f\u89c8\u5668"

    const-string v8, "com.tencent.mtt"

    invoke-direct {v4, v1, v6, v7, v8}, Lcom/tencent/smtt/sdk/b/a/b;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/smtt/sdk/b/a/c;->b:Landroid/widget/ListView;

    sget-object v1, Lcom/tencent/smtt/sdk/b/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/tencent/smtt/sdk/ValueCallback;

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/tencent/smtt/sdk/b/a/a;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/smtt/sdk/b/a/b;Lcom/tencent/smtt/sdk/b/a/b;Lcom/tencent/smtt/sdk/b/a/c;Landroid/widget/ListView;Lcom/tencent/smtt/sdk/ValueCallback;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->g:Lcom/tencent/smtt/sdk/b/a/a;

    .line 5
    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/c;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 1

    .line 90
    sget v0, Lcom/tencent/smtt/sdk/b/a/c;->l:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->k:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "key_tbs_picked_default_browser_"

    .line 5
    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/b/a/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->k:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_tbs_picked_default_browser_"

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/smtt/sdk/b/a/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->d:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/b/a/c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/b/a/c;->c()V

    .line 4
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->d:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/smtt/sdk/b/a/c$1;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/b/a/c$1;-><init>(Lcom/tencent/smtt/sdk/b/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->e:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/smtt/sdk/b/a/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/b/a/c$2;-><init>(Lcom/tencent/smtt/sdk/b/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/b/a/c;->b()V

    return-void
.end method
