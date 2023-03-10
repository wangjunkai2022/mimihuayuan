.class public Lcom/comeback/data/ui/gkj/SpecialActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "SpecialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/SpecialActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/gkj/bean/SpecialBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/gkj/SpecialActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/SpecialActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/SpecialActivity$a;->g:Lcom/comeback/data/ui/gkj/SpecialActivity;

    iput p2, p0, Lcom/comeback/data/ui/gkj/SpecialActivity$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/SpecialBean;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/gkj/SpecialActivity$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/SpecialActivity$a;->g:Lcom/comeback/data/ui/gkj/SpecialActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/gkj/SpecialActivity;->u(Lcom/comeback/data/ui/gkj/SpecialActivity;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/SpecialActivity$a;->g:Lcom/comeback/data/ui/gkj/SpecialActivity;

    .line 5
    iget v2, v0, Lcom/comeback/data/ui/gkj/SpecialActivity;->g:I

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    const/4 v2, 0x2

    .line 6
    invoke-static {v2, v3, v3}, Lf/b/a/a/a;->m(III)Lf/a/a/a/l/g;

    move-result-object v2

    .line 7
    iput-boolean v1, v2, Lf/a/a/a/l/g;->s:Z

    .line 8
    iget v3, v0, Lcom/comeback/data/ui/gkj/SpecialActivity;->f:I

    if-ne v3, v4, :cond_1

    .line 9
    iget-object v1, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, v0, p1, v2}, Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_4

    .line 10
    iget-object v1, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, v0, p1, v2}, Lcom/comeback/data/ui/gkj/adapter/NVideo2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_4

    .line 11
    invoke-static {v4, v3, v3}, Lf/b/a/a/a;->m(III)Lf/a/a/a/l/g;

    move-result-object v2

    .line 12
    iput-boolean v1, v2, Lf/a/a/a/l/g;->s:Z

    .line 13
    iget v3, v0, Lcom/comeback/data/ui/gkj/SpecialActivity;->f:I

    if-ne v3, v4, :cond_3

    .line 14
    iget-object v1, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NComic3Adapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, v0, p1, v2}, Lcom/comeback/data/ui/gkj/adapter/NComic3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    goto :goto_0

    :cond_3
    if-ne v3, v1, :cond_4

    .line 15
    iget-object v1, v0, Lcom/comeback/data/base/BaseVRefreshActivity;->d:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v3, Lcom/comeback/data/ui/gkj/adapter/NVideo3Adapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, v0, p1, v2}, Lcom/comeback/data/ui/gkj/adapter/NVideo3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    :cond_4
    :goto_0
    return-void
.end method
