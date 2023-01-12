.class public Lcom/comeback/data/ui/fruitPie/adapter/TagAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "TagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fruitPie/adapter/TagAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/fruitPie/adapter/TagAdapter;

.field public b:Ljava/lang/String;

.field public tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/fruitPie/adapter/TagAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/adapter/TagAdapter$Holder;->a:Lcom/comeback/data/ui/fruitPie/adapter/TagAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fruitPie/adapter/TagAdapter$Holder;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fruitPie/adapter/TagAdapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
