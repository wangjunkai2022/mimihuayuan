.class public Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$a;
.super Ljava/lang/Object;
.source "StarCardVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

.field public final synthetic b:Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$a;->b:Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$a;->a:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$a;->b:Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/StarCardVAdapter$a;->a:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/cucumber/ActorDetailActivity;->l(Landroid/content/Context;I)V

    return-void
.end method
