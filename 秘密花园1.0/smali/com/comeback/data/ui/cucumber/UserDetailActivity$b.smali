.class public Lcom/comeback/data/ui/cucumber/UserDetailActivity$b;
.super Lm/j;
.source "UserDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/UserDetailActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/cucumber/bean/UserDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/cucumber/UserDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/UserDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity$b;->e:Lcom/comeback/data/ui/cucumber/UserDetailActivity;

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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/UserDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/UserDetailActivity$b;->e:Lcom/comeback/data/ui/cucumber/UserDetailActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/UserDetail;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->tvCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->getFansCnt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "0NDqgNPu"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->tvInfo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v1, v0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->getUserDescs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->ivHead:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v1, v2}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/UserDetail$DataEntity;->getIcon()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lcom/comeback/data/ui/cucumber/UserDetailActivity;->ivBg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
