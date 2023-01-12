.class public Lcom/comeback/data/ui/km2/TagAdapter$a;
.super Ljava/lang/Object;
.source "TagAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/km2/TagAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;

.field public final synthetic b:Lcom/comeback/data/ui/km2/TagAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/TagAdapter;Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/TagAdapter$a;->b:Lcom/comeback/data/ui/km2/TagAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/km2/TagAdapter$a;->a:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/km2/TagAdapter$a;->b:Lcom/comeback/data/ui/km2/TagAdapter;

    iget-object p1, p1, Lcom/comeback/data/ui/km2/TagAdapter;->c:Lcom/comeback/data/ui/km2/TagAdapter$b;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/km2/TagAdapter$a;->a:Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;

    check-cast p1, Lcom/comeback/data/ui/km2/AreaChooseActivity$a;

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "XgY="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "WQMOAQ=="

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/comeback/data/ui/km2/bean/AreaBean$DataEntity$AreaLisCityEntity$CityEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p1, Lcom/comeback/data/ui/km2/AreaChooseActivity$a;->a:Lcom/comeback/data/ui/km2/AreaChooseActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    iget-object p1, p1, Lcom/comeback/data/ui/km2/AreaChooseActivity$a;->a:Lcom/comeback/data/ui/km2/AreaChooseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
