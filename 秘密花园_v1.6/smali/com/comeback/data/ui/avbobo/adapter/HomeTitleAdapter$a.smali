.class public Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter$a;
.super Ljava/lang/Object;
.source "HomeTitleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter$a;->b:Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter$a;->b:Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/adapter/HomeTitleAdapter$a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/comeback/data/ui/avbobo/SearchResultActivity;->v(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
