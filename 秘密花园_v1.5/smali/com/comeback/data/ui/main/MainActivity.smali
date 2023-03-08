.class public Lcom/comeback/data/ui/main/MainActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field public b:[[I

.field public banner:Lcom/comeback/data/widget/viewpager/PageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public c:Z

.field public d:Lcom/comeback/data/ui/main/adapter/MainAdapter$a;

.field public iv_bg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public llNotice:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvNotice:Lcom/comeback/data/widget/MarqueeTextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tv_version:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/comeback/data/ui/main/MainActivity;->b:[[I

    .line 3
    new-instance v0, Lf/e/a/j/c0/d;

    invoke-direct {v0, p0}, Lf/e/a/j/c0/d;-><init>(Lcom/comeback/data/ui/main/MainActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/main/MainActivity;->d:Lcom/comeback/data/ui/main/adapter/MainAdapter$a;

    return-void

    :array_0
    .array-data 4
        0x10
        0x14
        0x15
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x1
        0xa
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x2
        0xe
        0x17
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x7
        0x19
        0x3
    .end array-data

    :array_4
    .array-data 4
        0xc
        0x11
        0x1a
        0x10
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x17
        0x18
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xf
        0x3
        0x5
        0x11
    .end array-data
.end method

.method public static l(Lcom/comeback/data/ui/main/MainActivity;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lf/e/a/k/f;->a()V

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/comeback/data/ui/main/AppActivity;->p(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static synthetic m(Lcom/comeback/data/ui/main/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/main/MainActivity;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/main/MainActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c008a

    return v0
.end method

.method public e()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080062

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3
    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 5
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    .line 6
    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 7
    invoke-virtual {v5, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 8
    invoke-virtual {v4, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    .line 10
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->iv_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 12
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f10001b

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "FxQ="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lc/a/a/b/g/h;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->tv_version:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lc/a/a/b/g/h;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    sget-object v1, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getBanner()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    sget-object v1, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    .line 17
    invoke-virtual {v1}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getBanner()Ljava/util/List;

    move-result-object v1

    .line 18
    iget-object v3, v0, Lcom/comeback/data/ui/main/MainActivity;->banner:Lcom/comeback/data/widget/viewpager/PageView;

    new-instance v4, Lf/e/a/j/c0/e;

    invoke-direct {v4, v0}, Lf/e/a/j/c0/e;-><init>(Lcom/comeback/data/ui/main/MainActivity;)V

    invoke-virtual {v3, v1, v4}, Lcom/comeback/data/widget/viewpager/PageView;->a(Ljava/util/List;Lcom/comeback/data/widget/viewpager/AdPagerAdapter$a;)V

    .line 19
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->banner:Lcom/comeback/data/widget/viewpager/PageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    :cond_0
    sget-object v1, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    const-string v3, "09rogsfS3LX+jpvT"

    const/4 v6, 0x0

    const v7, 0x7f090327

    const v8, 0x7f0902e2

    const v9, 0x7f0902ab

    if-nez v1, :cond_1

    goto/16 :goto_9

    .line 21
    :cond_1
    invoke-static/range {p0 .. p0}, Lc/a/a/b/g/h;->R(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v1}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getVersionNo()I

    move-result v13

    if-ge v12, v13, :cond_8

    .line 22
    invoke-virtual {v1}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getUpdateNotice()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getAllUpdateUrl()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v1}, Lcom/comeback/data/ui/main/bean/ConfigBean;->isForce()Z

    move-result v15

    const v14, 0x7f0c00e8

    .line 23
    invoke-static {v0, v14, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 24
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v14}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    .line 25
    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/widget/TextView;

    .line 26
    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/widget/TextView;

    .line 27
    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/widget/TextView;

    const v6, 0x7f0902ac

    .line 28
    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v10, 0x7f0902ad

    .line 29
    invoke-virtual {v14, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0902ae

    .line 30
    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 31
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x2

    if-eq v4, v2, :cond_4

    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    const/4 v2, 0x4

    if-eq v4, v2, :cond_2

    move-object/from16 v17, v1

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v2, 0x3

    .line 32
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x2

    .line 34
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v17, v1

    const/4 v4, 0x1

    .line 36
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    :goto_2
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0902a1

    .line 39
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v1, 0x7f090355

    .line 40
    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v1, "0MnogebA36jHgKLX"

    .line 41
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v1, Lf/e/a/j/c0/m;

    invoke-direct {v1, v0, v5}, Lf/e/a/j/c0/m;-><init>(Lcom/comeback/data/ui/main/MainActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v1, Lf/e/a/j/c0/n;

    invoke-direct {v1, v0, v15, v5}, Lf/e/a/j/c0/n;-><init>(Lcom/comeback/data/ui/main/MainActivity;ZLandroidx/appcompat/app/AlertDialog;)V

    .line 45
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v15, :cond_5

    const/16 v1, 0x8

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 49
    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz v15, :cond_6

    const/16 v1, 0x8

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 50
    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "0cHjgt743LvDgKLXn+PrjavO"

    .line 51
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 54
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->tvNotice:Lcom/comeback/data/widget/MarqueeTextView;

    invoke-virtual/range {v17 .. v17}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getUpdateNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->llNotice:Landroid/widget/LinearLayout;

    invoke-virtual/range {v17 .. v17}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getUpdateNotice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    :cond_8
    move-object/from16 v17, v1

    .line 56
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    const-string v2, "WwMQEDQdVkcaBVE="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v1, v1, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    const/4 v4, -0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    invoke-virtual/range {v17 .. v17}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getNoticeNo()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 59
    invoke-virtual/range {v17 .. v17}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getNoticeNo()I

    move-result v2

    const v4, 0x7f0c00e7

    const/4 v5, 0x0

    .line 60
    invoke-static {v0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 61
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    const v5, 0x7f090327

    .line 62
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v5, 0x7f0902e2

    .line 63
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v5, 0x7f0902ab

    .line 64
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v5, 0x7f0902a1

    .line 65
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v5, 0x7f090355

    .line 66
    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v5, "0P3Gjerg3Yn1"

    .line 67
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v5, Lf/e/a/j/c0/l;

    invoke-direct {v5, v0, v4, v2}, Lf/e/a/j/c0/l;-><init>(Lcom/comeback/data/ui/main/MainActivity;Landroidx/appcompat/app/AlertDialog;I)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x8

    .line 69
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "0ufPgfr5"

    .line 71
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 74
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->tvNotice:Lcom/comeback/data/widget/MarqueeTextView;

    invoke-virtual/range {v17 .. v17}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->llNotice:Landroid/widget/LinearLayout;

    invoke-virtual/range {v17 .. v17}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getNotice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x8

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    .line 76
    :cond_a
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->tvNotice:Lcom/comeback/data/widget/MarqueeTextView;

    invoke-virtual/range {v17 .. v17}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->llNotice:Landroid/widget/LinearLayout;

    invoke-virtual/range {v17 .. v17}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getNotice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x8

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    :goto_8
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->llNotice:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/comeback/data/ui/main/MainActivity;->r()V

    .line 80
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    const-string v2, "XwMQOxgbVkQsE0cC"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    iget-object v1, v1, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_a

    .line 82
    :cond_c
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    const v1, 0x7f0c00e7

    const/4 v2, 0x0

    .line 83
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 84
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const v4, 0x7f090327

    .line 85
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0902e2

    .line 86
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0902ab

    .line 87
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902a1

    .line 88
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090355

    .line 89
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v8, "0sfeg/H3"

    .line 90
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v3, Lf/e/a/j/c0/o;

    invoke-direct {v3, v0, v2}, Lf/e/a/j/c0/o;-><init>(Lcom/comeback/data/ui/main/MainActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v3, Lf/e/a/j/c0/p;

    invoke-direct {v3, v0, v2}, Lf/e/a/j/c0/p;-><init>(Lcom/comeback/data/ui/main/MainActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "0drKjc3b37zjgZDd"

    .line 96
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "09rZgNH136jHg5Han/Dnj4rxis7nlaWfEhZEiMTmi8SAh+bsguu829zd0NrHjffD3sPYg/TW"

    .line 97
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 99
    :goto_a
    iget-object v1, v0, Lcom/comeback/data/ui/main/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/comeback/data/base/BaseActivity;->i()V

    return-void
.end method

.method public final n()V
    .locals 5

    .line 1
    sget-object v0, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    const-string v1, "09rojNbO3K/Dg6nnnc7ujr/Uhez7lrOsnNq4gsfBhuWMh+vij8mS1Mj/0cLFjP/g0u3ogfvU"

    const-string v2, "ewMBAQc="

    const-string v3, "VA4KFAkcWEEX"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getShareText2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    sget-object v3, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    .line 6
    invoke-virtual {v3}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getShareText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 8
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 10
    sget-object v3, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    .line 11
    invoke-virtual {v3}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getLanzou()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lc/a/a/b/g/h;->k(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 12
    sget-object v4, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v4}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getIosShare()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    invoke-static {v3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 15
    sget-object v4, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    .line 16
    invoke-virtual {v4}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getIosShareText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 17
    :cond_1
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 19
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090165

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f09016a

    if-eq p1, v0, :cond_1

    const v0, 0x7f090176

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/comeback/data/ui/main/QuestionActivity;->l(Landroid/content/Context;)V

    return v1

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/comeback/data/ui/main/DownloadActivity;->q(Landroid/content/Context;)V

    return v1

    .line 4
    :cond_2
    invoke-static {p0}, Lcom/comeback/data/ui/main/CollectActivity;->l(Landroid/content/Context;)V

    return v1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/comeback/data/ui/main/MainActivity;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/MainActivity;->r()V

    :cond_0
    return-void
.end method

.method public synthetic p(Lcom/comeback/data/ui/main/bean/HomeBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getTask()Lcom/comeback/data/ui/main/bean/InstallTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getTask()Lcom/comeback/data/ui/main/bean/InstallTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/InstallTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getTask()Lcom/comeback/data/ui/main/bean/InstallTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/InstallTask;->getLockType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getTask()Lcom/comeback/data/ui/main/bean/InstallTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/main/MainActivity;->s(Lcom/comeback/data/ui/main/bean/InstallTask;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getTask()Lcom/comeback/data/ui/main/bean/InstallTask;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/main/MainActivity;->t(Lcom/comeback/data/ui/main/bean/InstallTask;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getType()I

    move-result v0

    const/16 v1, 0x5a

    const/4 v2, -0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 6
    :pswitch_0
    invoke-static {p0}, Lcom/comeback/data/ui/fruitPie/FruitActivity;->l(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 7
    :pswitch_1
    invoke-static {p0}, Lcom/comeback/data/ui/fengliu/FengliuActivity;->w(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-static {p0}, Lcom/comeback/data/ui/gdian/GDianActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 9
    :pswitch_3
    invoke-static {p0}, Lcom/comeback/data/ui/md/MdActivity;->n(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 10
    :pswitch_4
    invoke-static {p0}, Lcom/comeback/data/ui/ins/InsLaunchActivity;->o(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 11
    :pswitch_5
    invoke-static {p0}, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->o(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 12
    :pswitch_6
    invoke-static {p0}, Lcom/comeback/data/ui/md/MdActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 13
    :pswitch_7
    invoke-static {p0}, Lcom/comeback/data/ui/hm/HmLauncherActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 14
    :pswitch_8
    invoke-static {p0}, Lcom/comeback/data/ui/senlin/ZYBrowseActivity;->l(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 15
    :pswitch_9
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/comeback/data/ui/main/AppActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 16
    :pswitch_a
    invoke-static {p0}, Lcom/comeback/data/ui/tomato/TomatoLaunchActivity;->l(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 17
    :pswitch_b
    invoke-static {p0}, Lcom/comeback/data/ui/jhlf/JHLFActivity;->n(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 18
    :pswitch_c
    invoke-static {p0}, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;->n(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 19
    :pswitch_d
    invoke-static {p0}, Lcom/comeback/data/ui/jav/JavActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 20
    :pswitch_e
    sget-object p1, Lf/e/a/k/b;->f0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/comeback/data/ui/H5/H5Activity;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 21
    :pswitch_f
    invoke-static {p0}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->p(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 22
    :pswitch_10
    invoke-static {p0}, Lcom/comeback/data/ui/nana/NanaLaunchActivity;->q(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 23
    :pswitch_11
    invoke-static {p0}, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 24
    :pswitch_12
    invoke-static {p0}, Lcom/comeback/data/ui/cm/CmActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 25
    :pswitch_13
    invoke-static {p0}, Lcom/comeback/data/ui/live/LiveChanelActivity;->u(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 26
    :pswitch_14
    invoke-static {p0}, Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 27
    :pswitch_15
    invoke-static {p0}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->q(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 28
    :pswitch_16
    invoke-static {p0}, Lcom/comeback/data/ui/sex8/ui/YXActivity;->n(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 29
    :pswitch_17
    invoke-static {p0}, Lcom/comeback/data/ui/avbobo/AvboboLaunchActivity;->l(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 30
    :pswitch_18
    invoke-static {p0}, Lcom/comeback/data/ui/bale/BaleActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 31
    :pswitch_19
    invoke-static {p0}, Lcom/comeback/data/ui/ds/DsActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_1a
    const-string p1, "XxYXFFFcFlcAC1xVVhIaERg="

    .line 32
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/comeback/data/ui/H5/H5Activity;->m(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 33
    :pswitch_1b
    invoke-static {p0}, Lcom/comeback/data/ui/km/PicActivity;->n(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 34
    :pswitch_1c
    invoke-static {p0}, Lcom/comeback/data/ui/xhl/XHLBrowseActivity;->l(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 35
    :pswitch_1d
    invoke-static {p0}, Lcom/comeback/data/ui/ba/BaLauncherActivity;->m(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 36
    :pswitch_1e
    invoke-static {p0}, Lcom/comeback/data/ui/km2/Km2LaunchActivity;->n(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_1f
    const-string p1, "XxYXFBhJFhweHwNeSFpNCFgPTBIEFxYCXQ5AChQ="

    .line 37
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/comeback/data/ui/H5/H5Activity;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 38
    :pswitch_20
    invoke-static {p0}, Lcom/comeback/data/ui/isiyu/IsiyuLaunchActivity;->l(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 39
    :pswitch_21
    invoke-virtual {p0}, Lcom/comeback/data/ui/main/MainActivity;->n()V

    goto/16 :goto_1

    .line 40
    :pswitch_22
    invoke-static {p0}, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->u(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 41
    :pswitch_23
    invoke-static {p0}, Lcom/comeback/data/ui/cucumber/CucumberLauncherActivity;->o(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 42
    :pswitch_24
    invoke-static {p0}, Lcom/comeback/data/ui/xiami/XMLauncherActivity;->l(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 43
    :pswitch_25
    invoke-static {p0}, Lcom/comeback/data/ui/slf/SlfLauncherActivity;->l(Landroid/content/Context;)V

    goto :goto_1

    .line 44
    :pswitch_26
    invoke-static {p0}, Lcom/comeback/data/ui/hg/HGBrowseActivity;->l(Landroid/content/Context;)V

    goto :goto_1

    .line 45
    :pswitch_27
    invoke-static {p0}, Lcom/comeback/data/ui/fulao2/FuLao2Launch2Activity;->m(Landroid/content/Context;)V

    goto :goto_1

    .line 46
    :pswitch_28
    invoke-static {p0}, Lcom/comeback/data/ui/gkj/GkjLauncherActivity;->l(Landroid/content/Context;)V

    goto :goto_1

    .line 47
    :pswitch_29
    invoke-static {p0}, Lcom/comeback/data/ui/iqiyi/IQYLaunchActivity;->m(Landroid/content/Context;)V

    goto :goto_1

    .line 48
    :pswitch_2a
    invoke-static {p0}, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->q(Landroid/content/Context;)V

    goto :goto_1

    .line 49
    :pswitch_2b
    invoke-static {p0}, Lcom/comeback/data/ui/tv91/Tv91LauncherActivity;->l(Landroid/content/Context;)V

    goto :goto_1

    .line 50
    :pswitch_2c
    invoke-static {p0}, Lcom/comeback/data/ui/sex8/ui/LouFengActivity;->n(Landroid/content/Context;)V

    goto :goto_1

    .line 51
    :pswitch_2d
    invoke-static {p0}, Lcom/comeback/data/ui/dn/DNActivity;->l(Landroid/content/Context;)V

    goto :goto_1

    .line 52
    :pswitch_2e
    invoke-static {p0}, Lcom/comeback/data/ui/xj/XJLaunchActivity;->n(Landroid/content/Context;)V

    goto :goto_1

    .line 53
    :pswitch_2f
    invoke-static {p0}, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->o(Landroid/content/Context;)V

    goto :goto_1

    .line 54
    :pswitch_30
    invoke-static {p0}, Lcom/comeback/data/ui/km/KmLaunchActivity;->n(Landroid/content/Context;)V

    goto :goto_1

    .line 55
    :pswitch_31
    invoke-static {p0}, Lcom/comeback/data/ui/movieCloud/VideoSearchActivity;->A(Landroid/content/Context;)V

    goto :goto_1

    .line 56
    :pswitch_32
    invoke-static {p0}, Lcom/comeback/data/ui/hgl/MyLiveActivity;->m(Landroid/content/Context;)V

    goto :goto_1

    .line 57
    :pswitch_33
    invoke-static {p0}, Lcom/comeback/data/ui/main/QuestionActivity;->l(Landroid/content/Context;)V

    goto :goto_1

    .line 58
    :pswitch_34
    invoke-static {p0}, Lcom/comeback/data/ui/main/DownloadActivity;->q(Landroid/content/Context;)V

    goto :goto_1

    .line 59
    :pswitch_35
    invoke-static {p0}, Lcom/comeback/data/ui/main/CollectActivity;->l(Landroid/content/Context;)V

    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/comeback/data/ui/H5/H5Activity;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/HomeBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/main/MainActivity;->o(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_4
    sget-object p1, Lf/e/a/k/b;->o0:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Lcom/comeback/data/ui/H5/H5Activity;->m(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch
.end method

.method public synthetic q(Lf/e/a/g/a;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lf/e/a/g/a;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/main/MainActivity;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Lcom/comeback/data/ui/main/adapter/MainAdapter;

    invoke-direct {v2, v1}, Lcom/comeback/data/ui/main/adapter/MainAdapter;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v0, v1, Lcom/comeback/data/ui/main/MainActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, v1, Lcom/comeback/data/ui/main/MainActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, v1, Lcom/comeback/data/ui/main/MainActivity;->d:Lcom/comeback/data/ui/main/adapter/MainAdapter$a;

    .line 5
    iput-object v0, v2, Lcom/comeback/data/ui/main/adapter/MainAdapter;->d:Lcom/comeback/data/ui/main/adapter/MainAdapter$a;

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    sget-object v5, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v5}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getExtra()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    sget-object v0, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    .line 11
    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getExtra()Ljava/util/List;

    move-result-object v0

    .line 12
    :cond_0
    new-instance v5, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v6, "3+P5gfv73qjHgKbK"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0PnXgvne0bLpg6Tvl9bvj4rChePplKO3"

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0e0043

    const/4 v9, 0x1

    invoke-direct {v5, v6, v8, v9, v7}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v5, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v6, "3sT6jP760ZT1j5b2"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0e0099

    const-string v10, "x/3u6IzvptrV/w=="

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v6, v7, v4, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0ej1jfPH3LzDgb3v"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e007a

    const/16 v7, 0x8

    const-string v10, "09rwgtjb3IHog6/anc7EjL7l"

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "3tjYjNr1bWU="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e008d

    const/16 v7, 0x2d

    const-string v10, ""

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "DlM3Mg=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0070

    const/16 v7, 0x30

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "excXEQkW"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e008c

    const/16 v7, 0x9

    const-string v11, "3+Lig+L/3q/4gb3gl9bvjIzthuHTlouolv2JgtzNhOKw"

    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "cRcPBQRB"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e007c

    const/16 v7, 0xc

    const-string v11, "0vLPjMTH3q/4g5D9nNDljov9htj0mqWzm8C1gOzCheK8hOrS"

    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "fiwwg8/N3L/J"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0083

    const/16 v7, 0x2f

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "cIvY+oPVr9rT3Q=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e007d

    const/16 v7, 0x31

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0dLXgvXv34fN"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0091

    const/16 v7, 0x33

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "3+jOgNLj0ZT1j5b2"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0074

    const/16 v7, 0x1b

    const-string v10, "0NzHgeT437nmgZzYkMzijYbghdPQlrOTlPywBgga"

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "3+/qjOXg0ZT1j5b2"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0077

    const/16 v7, 0x21

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0O7IgfnZ"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e008f

    const/4 v7, 0x4

    const-string v10, "0szmg//E3pX8g7zOn87djrvYjNjnm7mylO+4geTqhMOEh83+CgNJ"

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "fQMVICk="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0086

    const/16 v7, 0x26

    const-string v10, "0MXugcbj3qbZg7vQnvr/jIPA"

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "3+P5gfv735bPg7PD"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x28

    const-string v7, "0ufLjejb35bPg7PDkOv5jqfq"

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0tzNgvb835bPg7PD"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0095

    const/4 v7, 0x7

    const-string v8, "0s3hgcTt3IPCgKnCkNX6grDuhe3Vlp+Klsuk"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "39fngtHj3pjq"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e008b

    const/16 v7, 0x2b

    const-string v8, "39Tmg9HU3YvDg5vrn/DnjorTi8Ptm4y3ldykiMX0"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "393Ugc3K34/YgaDc"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e008e

    const/16 v7, 0x1e

    const-string v8, "0NzHgeT437nmgZzYkMzijYbghdPQlrOTlPywgcTBhP+MAxMU"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v5, v6, v7, v10}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "3v3KgtfY3IP8jpvT"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e0092

    const/16 v7, 0x2c

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0t3Ig+fY"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0t3Ig+fYWEMDiYjrkMTTjor3h9nLlKO3lNi6gt3XhvCph9zi"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0e001b

    const/4 v10, 0x3

    invoke-direct {v4, v5, v8, v10, v7}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0fTTg+L73IzYgbjM"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x15

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v8, v7, v6}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0f7qge7n3IP8jpvT"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e009b

    const/16 v7, 0x25

    const-string v8, "39Tmg9HU3YvDg5vrn/Dnjofti8vfm4y3ldykiMX0"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "3vHVgvb8GXU+"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0e009c

    const/16 v7, 0x1d

    const-string v8, "0tzrgsjh3qn3gKjuncnTjofti8vfm4y3ldyk"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0urlgNHY"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08012f

    const/16 v7, 0x12

    const-string v8, "0sfegNPv0ZbMgLTpnNPrjrjNh9/Ol4Gzl96eg8LQhMy2ivTr"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0eryg/H336fFjqPo"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08012a

    const/16 v7, 0x3e9

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0N7wgcbr3Yveg4vk"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08012b

    const/16 v7, 0x3ea

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "0trbjMzy0KTdj5b/"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08012c

    const/16 v7, 0x3eb

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v4, Lf/e/a/k/b;->d0:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 40
    new-instance v4, Lcom/comeback/data/ui/main/bean/HomeBean;

    const-string v5, "VhIIgfv70Kj1"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0e0043

    const/16 v14, 0x2a

    const-string v5, "0fbVjPz83o7ig6nnntrbg4j+h9zml4Wpm9mDj8/F"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lf/e/a/k/b;->d0:Ljava/lang/String;

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lcom/comeback/data/ui/main/bean/HomeBean;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 41
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v5, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_2

    mul-int/lit8 v6, v5, 0x5

    .line 42
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 43
    :cond_2
    sget-object v0, Lcom/comeback/data/App;->e:Lcom/comeback/data/ui/main/bean/ConfigBean;

    if-eqz v0, :cond_8

    .line 44
    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/ConfigBean;->getTask()Lcom/comeback/data/ui/main/bean/InstallTask;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 45
    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/InstallTask;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/a/a/b/g/h;->r(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_3

    .line 46
    :cond_3
    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/InstallTask;->getLockType()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 47
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/comeback/data/ui/main/bean/HomeBean;

    .line 48
    invoke-virtual {v5}, Lcom/comeback/data/ui/main/bean/HomeBean;->getType()I

    move-result v6

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/InstallTask;->getLockType()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 49
    invoke-virtual {v5, v0}, Lcom/comeback/data/ui/main/bean/HomeBean;->setTask(Lcom/comeback/data/ui/main/bean/InstallTask;)V

    goto :goto_1

    .line 50
    :cond_5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    div-long/2addr v5, v7

    const-wide/16 v7, 0x18

    div-long/2addr v5, v7

    const-wide/16 v7, 0x7

    rem-long/2addr v5, v7

    long-to-int v6, v5

    .line 51
    iget-object v5, v1, Lcom/comeback/data/ui/main/MainActivity;->b:[[I

    aget-object v5, v5, v6

    .line 52
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/comeback/data/ui/main/bean/HomeBean;

    .line 53
    invoke-virtual {v7}, Lcom/comeback/data/ui/main/bean/HomeBean;->getType()I

    move-result v8

    aget v11, v5, v4

    if-eq v8, v11, :cond_7

    invoke-virtual {v7}, Lcom/comeback/data/ui/main/bean/HomeBean;->getType()I

    move-result v8

    aget v11, v5, v9

    if-eq v8, v11, :cond_7

    invoke-virtual {v7}, Lcom/comeback/data/ui/main/bean/HomeBean;->getType()I

    move-result v8

    const/4 v11, 0x2

    aget v11, v5, v11

    if-eq v8, v11, :cond_7

    invoke-virtual {v7}, Lcom/comeback/data/ui/main/bean/HomeBean;->getType()I

    move-result v8

    aget v11, v5, v10

    if-ne v8, v11, :cond_6

    .line 54
    :cond_7
    invoke-virtual {v7, v0}, Lcom/comeback/data/ui/main/bean/HomeBean;->setTask(Lcom/comeback/data/ui/main/bean/InstallTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_8
    :goto_3
    iget-object v0, v2, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    return-void
.end method

.method public final s(Lcom/comeback/data/ui/main/bean/InstallTask;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "0e3zg8/J"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0t/wgeL+0JHij7X0kfbjg5Hjhsrim5q2Uw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/InstallTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "F4Tq6YPwhNfO2dPz0GCGzbWE/fiPy7LbztvQ3/WO2e3fzdSM1Ojep9uAvNCf1MeDtvaE19CUl5KU9rKC6fJpjY/LisLDlbajlMKOXZzS7o200Yfc4JuEjpbpm4PDz4TGvoTPxY3knNvUxd3z+Q=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "0frtgc/a3LX+gaDP"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/comeback/data/ui/main/MainActivity$d;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/main/MainActivity$d;-><init>(Lcom/comeback/data/ui/main/MainActivity;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "0MnogebA3J36jpfi"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/comeback/data/ui/main/MainActivity$c;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/main/MainActivity$c;-><init>(Lcom/comeback/data/ui/main/MainActivity;Lcom/comeback/data/ui/main/bean/InstallTask;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final t(Lcom/comeback/data/ui/main/bean/InstallTask;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "0e3zg8/J"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0f7Pjcni0LLgj6jnkMziiLfyhsrim5q2kOalRw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/InstallTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "F4Tq6YPwhNfO2dPz0GCGzbWE/fiPy7LbztvQ3/WO2e3fzdSM1Ojep9uAvNCf1MeDtvaE19CUl5KU9rKC6fI="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "09nGgfv93LX+gaDP"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/comeback/data/ui/main/MainActivity$b;

    invoke-direct {v2, p0}, Lcom/comeback/data/ui/main/MainActivity$b;-><init>(Lcom/comeback/data/ui/main/MainActivity;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "0MnogebA3J36jpfi"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/comeback/data/ui/main/MainActivity$a;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/main/MainActivity$a;-><init>(Lcom/comeback/data/ui/main/MainActivity;Lcom/comeback/data/ui/main/bean/InstallTask;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
