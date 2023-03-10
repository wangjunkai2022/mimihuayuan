.class public Lcom/comeback/data/ui/ds/adapter/TitleAdapter$a;
.super Ljava/lang/Object;
.source "TitleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ds/adapter/TitleAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/adapter/TitleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/ds/adapter/TitleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/ds/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/ds/adapter/TitleAdapter;

    .line 2
    iget v0, p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->a:Landroid/content/Context;

    const-string v0, "0sbEgcXF0LDOg6jPn/bo"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VA0OFA4HUEcaEFE="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/ds/TagActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->a:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lcom/comeback/data/ui/ds/RankActivity;->o(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 7
    iget-object p1, p1, Lcom/comeback/data/ui/ds/adapter/TitleAdapter;->a:Landroid/content/Context;

    const-string v0, "0c/JgsbZ0LT+gZfineD4g7ry"

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RQcACwYeXF0X"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/ds/TagActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
