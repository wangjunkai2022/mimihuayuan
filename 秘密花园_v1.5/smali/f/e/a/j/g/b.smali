.class public Lf/e/a/j/g/b;
.super Lm/j;
.source "ColumnDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/cucumber/bean/ColumnDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/g/b;->e:Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/e/a/j/g/b;->e:Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->t(Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;I)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/ColumnDetail;

    .line 2
    iget-object v0, p0, Lf/e/a/j/g/b;->e:Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->t(Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;I)V

    .line 3
    iget-object v0, p0, Lf/e/a/j/g/b;->e:Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;

    .line 4
    iput-object p1, v0, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->d:Lcom/comeback/data/ui/cucumber/bean/ColumnDetail;

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/ColumnDetail;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/ColumnDetail$DataBean;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/ColumnDetail$DataBean;->getPhotoAddr()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->ivBg:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 7
    iget-object v1, v0, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/ColumnDetail$DataBean;->getNavName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, v0, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/ColumnDetail$DataBean;->getIntro()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
