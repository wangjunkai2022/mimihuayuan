.class public Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "AuthorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter;

.field public b:Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;

.field public ivHead:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvAuthor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter$Holder;->a:Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter$Holder;->tvAuthor:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;->getAnchors_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;->getAnchors_img()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter$Holder;->ivHead:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter$Holder;->tvCount:Landroid/widget/TextView;

    const-string v1, "0ufSQQ+aupuX26iC6+s="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;->getLibrary_count()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/AuthorAdapter$Holder;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/AuthorBean;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
