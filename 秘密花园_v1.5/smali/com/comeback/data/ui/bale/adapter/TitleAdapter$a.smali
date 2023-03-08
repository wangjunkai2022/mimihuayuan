.class public Lcom/comeback/data/ui/bale/adapter/TitleAdapter$a;
.super Ljava/lang/Object;
.source "TitleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/bale/adapter/TitleAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/adapter/TitleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/bale/adapter/TitleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/bale/adapter/TitleAdapter;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/VideoList$ResultBean;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/comeback/data/ui/bale/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/bale/adapter/TitleAdapter;

    .line 5
    iget v1, v1, Lcom/comeback/data/ui/bale/adapter/TitleAdapter;->d:I

    .line 6
    invoke-static {v0, p1, v1}, Lcom/comeback/data/ui/bale/ScreenActivity;->m(Landroid/content/Context;II)V

    return-void
.end method
