.class public Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/fulao2/bean/Host$StreamBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;

.field public b:Lcom/comeback/data/ui/fulao2/bean/Host$StreamBean;

.field public basic_third_text:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public chooseDrawable:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lbutterknife/BindDrawable;
    .end annotation
.end field

.field public colorWhite:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->a:Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/Host$StreamBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->b:Lcom/comeback/data/ui/fulao2/bean/Host$StreamBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/Host$StreamBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    sget v0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter;->e:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->tvTag:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->chooseDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->tvTag:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->colorWhite:I

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/comeback/data/ui/fulao2/adapter/ChooseAdapter$Holder;->basic_third_text:I

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
