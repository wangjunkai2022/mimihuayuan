.class public Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/adapter/VideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/gdian/adapter/VideoAdapter;

.field public b:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDuration:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/gdian/adapter/VideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->a:Lcom/comeback/data/ui/gdian/adapter/VideoAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->getMovie_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->getMovie_cover()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->tvDesc:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->getWatch_countText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2N//"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->getPush_time()I

    move-result v1

    invoke-static {v1}, Lc/a/a/b/g/h;->g0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->tvDuration:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/gdian/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/gdian/bean/VideoList$DataEntity$VideoEntity;->getMovie_long()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
