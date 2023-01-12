.class public Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "CollectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/cucumber/bean/RealmVideo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter;

.field public b:Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDuration:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvPlayCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;->a:Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;->b:Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->getCover()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;->tvDuration:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->getMins()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;->tvPlayCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->getStrPlayCnt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
