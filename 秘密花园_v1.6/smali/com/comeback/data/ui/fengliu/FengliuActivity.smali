.class public Lcom/comeback/data/ui/fengliu/FengliuActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "FengliuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fengliu/FengliuActivity$b;
    }
.end annotation


# static fields
.field public static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fengliu/FengliuActivity$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/fengliu/FengliuActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field public tvArea:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvOrder:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvService:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "RxcBCAIAUQ=="

    .line 2
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "QAcGDw=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const-string v3, "Wg0NEAM="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v1, v6

    const-string v3, "WwMQEAYcV0cb"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v1, v7

    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "XxYXFBhJFhwXB1pSQUQbEk0="

    .line 3
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "XxYXFBhJFhwXB1tSQUQbEk0="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "XxYXFBhJFhwQDlFSQUQbEk0="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    const-string v3, "XxYXFBhJFhwXE1pSQUQbEk0="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    const-string v3, "XxYXFBhJFhwXEwNUVhIaEQ=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "XxYXFBhJFhwUA1pSQUQbEk0="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const-string v0, "XxYXFBhJFhwbB1tSQUQbEk0="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v1, v3

    const-string v0, "XxYXFBhJFhwbA11SQUQbEk0="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v1, v3

    const-string v0, "XxYXFBhJFhweB1pSQUQbEk0="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v1, v3

    const-string v0, "XxYXFBhJFhwXEgFQVhIaEQ=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->f:[Ljava/lang/String;

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->g:Ljava/lang/String;

    const-string v0, "Vg4P"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/fengliu/FengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/fengliu/FengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static w(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/fengliu/FengliuActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c004a

    return v0
.end method

.method public e()V
    .locals 12

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 3
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    const-class v2, Lcom/comeback/data/ui/fengliu/FengliuActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v1, v1, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 5
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v2

    const-string v3, "Wg88DAQATQ=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/e/a/k/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Lf/i/b/j;

    invoke-direct {v3}, Lf/i/b/j;-><init>()V

    const-class v5, Lcom/comeback/data/ui/fengliu/bean/MMHost;

    invoke-virtual {v3, v2, v5}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/fengliu/bean/MMHost;

    .line 8
    invoke-virtual {v2}, Lcom/comeback/data/ui/fengliu/bean/MMHost;->getUrls()Ljava/util/List;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->f:[Ljava/lang/String;

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->f:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 10
    array-length v1, v2

    add-int/2addr v1, v0

    :cond_1
    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v1

    sput-object v0, Lf/e/a/k/b;->m0:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "3tn7jMXX0bnxgbbe"

    .line 13
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "0sbkg//b0bnxgbbeSQ=="

    .line 14
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "0sbkg//b0bnxgbbeSg=="

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "0sbkg//b0bnxgbbeSw=="

    .line 16
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "0sbkg//b0bnxgbbeTA=="

    .line 17
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "0sbkg//b0bnxgbbeTQ=="

    .line 18
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "0sbkg//b0bnxgbbeTg=="

    .line 19
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "0sbkg//b0bnxgbbeTw=="

    .line 20
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v2, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->tvService:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 22
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    .line 23
    sget-object v2, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 24
    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "VAsXHUUHQUc="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 25
    new-instance v2, Lf/i/b/j;

    invoke-direct {v2}, Lf/i/b/j;-><init>()V

    new-instance v3, Lf/e/a/j/j/j;

    invoke-direct {v3, p0}, Lf/e/a/j/j/j;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;)V

    .line 26
    iget-object v3, v3, Lf/i/b/d0/a;->b:Ljava/lang/reflect/Type;

    .line 27
    invoke-virtual {v2, v1}, Lf/i/b/j;->h(Ljava/io/Reader;)Lf/i/b/e0/a;

    move-result-object v1

    .line 28
    invoke-virtual {v2, v1, v3}, Lf/i/b/j;->c(Lf/i/b/e0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-static {v2, v1}, Lf/i/b/j;->a(Ljava/lang/Object;Lf/i/b/e0/a;)V

    .line 30
    check-cast v2, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    .line 32
    :goto_0
    iput-object v2, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->d:Ljava/util/HashMap;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->i:Ljava/util/ArrayList;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->h:Ljava/util/List;

    .line 35
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->d:Ljava/util/HashMap;

    const-string v2, "D1Q="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 36
    iget-object v3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->i:Ljava/util/ArrayList;

    new-instance v5, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;

    const-string v6, "0ufLjejb"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Vg4P"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p0, v7, v8}, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 39
    iget-object v8, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->i:Ljava/util/ArrayList;

    new-instance v9, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;

    invoke-direct {v9, p0, v7, v5}, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;

    .line 41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v7, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->h:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v7, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    iget-object v9, v3, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;->b:Ljava/lang/String;

    .line 45
    invoke-direct {v7, p0, v8, v9}, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v7, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->d:Ljava/util/HashMap;

    .line 47
    iget-object v3, v3, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    if-eqz v3, :cond_4

    .line 49
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    .line 50
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 51
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 52
    new-instance v10, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;

    invoke-direct {v10, p0, v9, v8}, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 53
    :cond_6
    sget-object v1, Lcom/comeback/data/ui/fengliu/FengliuActivity;->k:Ljava/util/HashMap;

    if-nez v1, :cond_8

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/comeback/data/ui/fengliu/FengliuActivity;->k:Ljava/util/HashMap;

    .line 55
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->d:Ljava/util/HashMap;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 56
    sget-object v2, Lcom/comeback/data/ui/fengliu/FengliuActivity;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 57
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 58
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 61
    iget-object v6, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->d:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 62
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 63
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 65
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 66
    sget-object v9, Lcom/comeback/data/ui/fengliu/FengliuActivity;->k:Ljava/util/HashMap;

    invoke-static {v5}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "aA=="

    invoke-static {v11}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 67
    :cond_8
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    const-string v2, "AlMFAQUUVVoGOUAOCBk="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    iget-object v1, v1, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_5

    .line 69
    :cond_9
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    const v1, 0x7f0c00e7

    .line 70
    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f090327

    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902e2

    .line 73
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902ab

    .line 74
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0902a1

    .line 75
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090355

    .line 76
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v6, "0P3Gjerg3Yn1"

    .line 77
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v6, Lf/e/a/j/j/i;

    invoke-direct {v6, p0, v1}, Lf/e/a/j/j/i;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    .line 79
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "0drKjc3b37zjgZDd"

    .line 81
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0f7Pjcni0LLggo/inNf/j4/WhfPdl4SMlPKciMTmivG4hPTSj8+j18vt0vnOjOv93+Lmgc/C36b7iYjrkf/cjav9h9nUlK2bm8mDj8fxi+qth/PsjdaF1vTCPm2dzOGNqf6G7NyVr4OX3rmC/9CF9pKKzNOOw6Tb3PPR6MuO2+HfxfGB4/TfvtGOvuWf6No="

    .line 82
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_5
    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/fengliu/adapter/FengliuAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    const-class v0, Lf/e/a/j/j/m/d;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sput-object v1, Lf/e/a/j/j/m/d;->b:Lf/e/a/j/j/m/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    sput-object v1, Lcom/comeback/data/ui/fengliu/FengliuActivity;->k:Ljava/util/HashMap;

    return-void

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090125

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f090138

    if-eq p1, v0, :cond_1

    const v0, 0x7f090142

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "3tn7jMXX0bnxgbbe"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0sbkg//b0bnxgbbeSQ=="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0sbkg//b0bnxgbbeSg=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0sbkg//b0bnxgbbeSw=="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0sbkg//b0bnxgbbeTA=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0sbkg//b0bnxgbbeTQ=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0sbkg//b0bnxgbbeTg=="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0sbkg//b0bnxgbbeTw=="

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Lf/e/a/j/j/e;

    invoke-direct {v0, p0, p1}, Lf/e/a/j/j/e;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;Ljava/util/ArrayList;)V

    .line 12
    new-instance v3, Lf/c/a/g/a;

    invoke-direct {v3, v2}, Lf/c/a/g/a;-><init>(I)V

    .line 13
    iput-object p0, v3, Lf/c/a/g/a;->t:Landroid/content/Context;

    .line 14
    iput-object v0, v3, Lf/c/a/g/a;->a:Lf/c/a/h/d;

    .line 15
    new-instance v0, Lf/c/a/i/e;

    invoke-direct {v0, v3}, Lf/c/a/i/e;-><init>(Lf/c/a/g/a;)V

    .line 16
    invoke-virtual {v0, p1, v1, v1}, Lf/c/a/i/e;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 17
    invoke-virtual {v0}, Lf/c/a/i/b;->e()V

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0f7jgv3D3Lzig4zk"

    .line 19
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "09rjgfrb3rDej6PP"

    .line 20
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0f7Pgvf73rDej6PP"

    .line 21
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "09rpgvf73rDej6PP"

    .line 22
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lf/e/a/j/j/d;

    invoke-direct {v0, p0, p1}, Lf/e/a/j/j/d;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;Ljava/util/ArrayList;)V

    .line 24
    new-instance v3, Lf/c/a/g/a;

    invoke-direct {v3, v2}, Lf/c/a/g/a;-><init>(I)V

    .line 25
    iput-object p0, v3, Lf/c/a/g/a;->t:Landroid/content/Context;

    .line 26
    iput-object v0, v3, Lf/c/a/g/a;->a:Lf/c/a/h/d;

    .line 27
    new-instance v0, Lf/c/a/i/e;

    invoke-direct {v0, v3}, Lf/c/a/i/e;-><init>(Lf/c/a/g/a;)V

    .line 28
    invoke-virtual {v0, p1, v1, v1}, Lf/c/a/i/e;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 29
    invoke-virtual {v0}, Lf/c/a/i/b;->e()V

    goto :goto_0

    .line 30
    :cond_2
    new-instance p1, Lf/e/a/j/j/c;

    invoke-direct {p1, p0}, Lf/e/a/j/j/c;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;)V

    .line 31
    new-instance v0, Lf/c/a/g/a;

    invoke-direct {v0, v2}, Lf/c/a/g/a;-><init>(I)V

    .line 32
    iput-object p0, v0, Lf/c/a/g/a;->t:Landroid/content/Context;

    .line 33
    iput-object p1, v0, Lf/c/a/g/a;->a:Lf/c/a/h/d;

    .line 34
    new-instance p1, Lf/c/a/i/e;

    invoke-direct {p1, v0}, Lf/c/a/i/e;-><init>(Lf/c/a/g/a;)V

    .line 35
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->h:Ljava/util/List;

    .line 36
    invoke-virtual {p1, v0, v2, v1}, Lf/c/a/i/e;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 37
    invoke-virtual {p1}, Lf/c/a/i/b;->e()V

    :goto_0
    return-void
.end method

.method public p(I)V
    .locals 4

    .line 1
    const-class v0, Lf/e/a/j/j/m/d;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lf/e/a/j/j/m/d;->b:Lf/e/a/j/j/m/d;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lf/e/a/j/j/m/d;

    invoke-direct {v1}, Lf/e/a/j/j/m/d;-><init>()V

    sput-object v1, Lf/e/a/j/j/m/d;->b:Lf/e/a/j/j/m/d;

    .line 4
    :cond_0
    sget-object v1, Lf/e/a/j/j/m/d;->b:Lf/e/a/j/j/m/d;

    iget-object v1, v1, Lf/e/a/j/j/m/d;->a:Lf/e/a/j/j/m/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "RwMEAQ=="

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Vg4P"

    invoke-static {p1, v0, v2, v3}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VAsXHSgcXVY="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "RA0REA=="

    .line 9
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v1, v0}, Lf/e/a/j/j/m/a;->c(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/comeback/data/ui/fengliu/FengliuActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/fengliu/FengliuActivity$a;-><init>(Lcom/comeback/data/ui/fengliu/FengliuActivity;I)V

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0

    throw p1
.end method

.method public t(IIILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->h:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;

    .line 2
    iget-object p3, p2, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->j:Ljava/lang/String;

    .line 4
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->tvArea:Landroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;->a:Ljava/lang/String;

    const-string v0, "Gg=="

    .line 6
    invoke-static {p4, p1, v0}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p2, Lcom/comeback/data/ui/fengliu/FengliuActivity$b;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public synthetic u(Ljava/util/ArrayList;IIILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->e:[Ljava/lang/String;

    aget-object p3, p3, p2

    iput-object p3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->g:Ljava/lang/String;

    .line 2
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->tvOrder:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method

.method public synthetic v(Ljava/util/ArrayList;IIILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->tvService:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x9

    if-le p2, p1, :cond_0

    const/16 p2, 0x9

    .line 2
    :cond_0
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object p1

    const-class p3, Lcom/comeback/data/ui/fengliu/FengliuActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lf/e/a/k/j;->g(Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/fengliu/FengliuActivity;->f:[Ljava/lang/String;

    array-length p3, p1

    if-lt p2, p3, :cond_1

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    aget-object p1, p1, p2

    sput-object p1, Lf/e/a/k/b;->m0:Ljava/lang/String;

    .line 4
    invoke-static {}, Lf/e/a/j/j/m/d;->a()V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
