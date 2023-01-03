.class public Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "CollectListAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;->a:Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter$Holder;->b:Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->o(Landroid/content/Context;I)V

    return-void
.end method
