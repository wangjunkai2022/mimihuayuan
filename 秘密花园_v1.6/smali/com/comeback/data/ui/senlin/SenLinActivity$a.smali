.class public Lcom/comeback/data/ui/senlin/SenLinActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "SenLinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/senlin/SenLinActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/senlin/bean/SenlinList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/senlin/SenLinActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/SenLinActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/SenLinActivity$a;->g:Lcom/comeback/data/ui/senlin/SenLinActivity;

    iput p2, p0, Lcom/comeback/data/ui/senlin/SenLinActivity$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/comeback/data/ui/senlin/bean/SenlinList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/senlin/SenLinActivity$a;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/SenLinActivity$a;->g:Lcom/comeback/data/ui/senlin/SenLinActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/senlin/SenLinActivity;->u(Lcom/comeback/data/ui/senlin/SenLinActivity;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/SenLinActivity$a;->g:Lcom/comeback/data/ui/senlin/SenLinActivity;

    .line 5
    iput-boolean v1, v0, Lcom/comeback/data/ui/senlin/SenLinActivity;->e:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/SenLinActivity$a;->g:Lcom/comeback/data/ui/senlin/SenLinActivity;

    .line 7
    iget-boolean v3, v0, Lcom/comeback/data/ui/senlin/SenLinActivity;->e:Z

    if-nez v3, :cond_3

    .line 8
    new-instance v3, Lf/a/a/a/l/c;

    invoke-direct {v3}, Lf/a/a/a/l/c;-><init>()V

    .line 9
    iget-object v4, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;

    new-instance v6, Lf/e/a/j/j0/a;

    invoke-direct {v6, v0}, Lf/e/a/j/j0/a;-><init>(Lcom/comeback/data/ui/senlin/SenLinActivity;)V

    const-string v7, ""

    invoke-direct {v5, v0, v7, v3, v6}, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$a;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 10
    new-instance v3, Lf/a/a/a/l/g;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lf/a/a/a/l/g;-><init>(I)V

    .line 11
    invoke-virtual {v3, v4}, Lf/a/a/a/l/g;->D(I)V

    .line 12
    invoke-virtual {v3, v4}, Lf/a/a/a/l/g;->C(I)V

    .line 13
    iput-boolean v1, v3, Lf/a/a/a/l/g;->s:Z

    .line 14
    iget-object v1, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/senlin/bean/SenlinList;->getcClass()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lf/e/a/j/j0/b;

    invoke-direct {v6, v0}, Lf/e/a/j/j0/b;-><init>(Lcom/comeback/data/ui/senlin/SenLinActivity;)V

    invoke-direct {v4, v0, v5, v3, v6}, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$b;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 15
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 16
    iget-object v3, v0, Lcom/comeback/data/ui/senlin/SenLinActivity;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    iget-object v3, v0, Lcom/comeback/data/ui/senlin/SenLinActivity;->f:Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;

    if-nez v3, :cond_1

    const-string v3, "0f7jjNTi36jHgKLX"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->getType_name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 18
    :cond_2
    iget-object v3, v0, Lcom/comeback/data/ui/senlin/SenLinActivity;->g:Ljava/lang/String;

    .line 19
    :goto_0
    iget-object v4, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v5, Lcom/comeback/data/ui/senlin/adapter/VTitleAdapter;

    invoke-direct {v5, v0, v3, v1}, Lcom/comeback/data/ui/senlin/adapter/VTitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 20
    iput-boolean v2, v0, Lcom/comeback/data/ui/senlin/SenLinActivity;->e:Z

    .line 21
    :cond_3
    new-instance v1, Lf/a/a/a/l/i;

    invoke-direct {v1}, Lf/a/a/a/l/i;-><init>()V

    .line 22
    iget-object v2, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/senlin/bean/SenlinList;->getList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, v0, p1, v1}, Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method
