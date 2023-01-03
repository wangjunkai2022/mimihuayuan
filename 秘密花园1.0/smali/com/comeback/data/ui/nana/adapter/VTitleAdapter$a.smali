.class public Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$a;
.super Ljava/lang/Object;
.source "VTitleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$a;->a:Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter$a;->a:Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/nana/adapter/VTitleAdapter;->c:Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/MenuBean$ResponseEntity;->getSearch()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/nana/SearchResultActivity;->n(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
