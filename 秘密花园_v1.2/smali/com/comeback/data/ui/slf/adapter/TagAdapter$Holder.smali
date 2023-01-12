.class public Lcom/comeback/data/ui/slf/adapter/TagAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "TagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/slf/adapter/TagAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/slf/bean/SearchInfo$KeywordsBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/slf/adapter/TagAdapter;

.field public b:Lcom/comeback/data/ui/slf/bean/SearchInfo$KeywordsBean;

.field public tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/slf/adapter/TagAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/TagAdapter$Holder;->a:Lcom/comeback/data/ui/slf/adapter/TagAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/SearchInfo$KeywordsBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/TagAdapter$Holder;->b:Lcom/comeback/data/ui/slf/bean/SearchInfo$KeywordsBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/TagAdapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/SearchInfo$KeywordsBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
