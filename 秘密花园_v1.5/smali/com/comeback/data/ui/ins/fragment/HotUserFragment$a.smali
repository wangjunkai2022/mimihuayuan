.class public Lcom/comeback/data/ui/ins/fragment/HotUserFragment$a;
.super Lm/j;
.source "HotUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ins/fragment/HotUserFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ins/bean/HotUser;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/ins/fragment/HotUserFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/fragment/HotUserFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$a;->e:Lcom/comeback/data/ui/ins/fragment/HotUserFragment;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ins/bean/HotUser;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$a;->e:Lcom/comeback/data/ui/ins/fragment/HotUserFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/ins/fragment/HotUserFragment;->p(Lcom/comeback/data/ui/ins/fragment/HotUserFragment;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$a;->e:Lcom/comeback/data/ui/ins/fragment/HotUserFragment;

    .line 5
    new-instance v2, Lcom/comeback/data/ui/ins/adapter/VTitleAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "09jZgtvn3JbAgZH5"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lf/a/a/a/l/l;

    invoke-direct {v5}, Lf/a/a/a/l/l;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/comeback/data/ui/ins/adapter/VTitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    .line 6
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 7
    new-instance v2, Lf/a/a/a/l/g;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lf/a/a/a/l/g;-><init>(I)V

    .line 8
    new-instance v4, Lcom/comeback/data/ui/ins/adapter/HotUserAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/HotUser;->getData()Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity;->getResultList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, v5, p1, v2}, Lcom/comeback/data/ui/ins/adapter/HotUserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    .line 9
    iget-object p1, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {p1, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 10
    new-instance p1, Lcom/comeback/data/ui/ins/adapter/VTitleAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "0N71jNXi373bjrn3"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lf/a/a/a/l/l;

    invoke-direct {v3}, Lf/a/a/a/l/l;-><init>()V

    invoke-direct {p1, v1, v2, v3}, Lcom/comeback/data/ui/ins/adapter/VTitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    .line 11
    iget-object v0, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 12
    iget-object p1, p0, Lcom/comeback/data/ui/ins/fragment/HotUserFragment$a;->e:Lcom/comeback/data/ui/ins/fragment/HotUserFragment;

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/ins/fragment/HotUserFragment;->s(I)V

    return-void
.end method
