.class public Lcom/comeback/data/ui/senlin/SenLinActivity;
.super Lcom/comeback/data/base/BaseVRefreshActivity;
.source "SenLinActivity.java"


# static fields
.field public static h:Ljava/lang/String; = ""


# instance fields
.field public e:Z

.field public f:Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;-><init>()V

    return-void
.end method

.method public static synthetic u(Lcom/comeback/data/ui/senlin/SenLinActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;->r()V

    return-void
.end method

.method public static v(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/senlin/SenLinActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseVRefreshActivity;->e()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    const-class v0, Lf/e/a/j/i0/f/b;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sput-object v1, Lf/e/a/j/i0/f/b;->b:Lf/e/a/j/i0/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public p(I)V
    .locals 5

    .line 1
    invoke-static {}, Lf/e/a/j/i0/f/b;->a()Lf/e/a/j/i0/f/a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "VgE="

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WwsQEA=="

    const-string v4, "RwU="

    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget v3, p0, Lcom/comeback/data/base/BaseRefreshActivity;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/comeback/data/ui/senlin/SenLinActivity;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/comeback/data/ui/senlin/SenLinActivity;->f:Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;

    if-eqz v2, :cond_1

    const-string v2, "Qw=="

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/senlin/SenLinActivity;->f:Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;

    invoke-virtual {v3}, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->getType_id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "QAY="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/senlin/SenLinActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    :goto_0
    invoke-interface {v0, v1}, Lf/e/a/j/i0/f/a;->b(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/comeback/data/ui/senlin/SenLinActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/senlin/SenLinActivity$a;-><init>(Lcom/comeback/data/ui/senlin/SenLinActivity;I)V

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
