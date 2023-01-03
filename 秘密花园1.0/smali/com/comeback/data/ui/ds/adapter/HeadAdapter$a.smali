.class public Lcom/comeback/data/ui/ds/adapter/HeadAdapter$a;
.super Ljava/lang/Object;
.source "HeadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ds/adapter/HeadAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ds/adapter/HeadAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/adapter/HeadAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/adapter/HeadAdapter$a;->a:Lcom/comeback/data/ui/ds/adapter/HeadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/ds/adapter/HeadAdapter$a;->a:Lcom/comeback/data/ui/ds/adapter/HeadAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/ds/adapter/HeadAdapter;->a:Landroid/content/Context;

    const-string v0, "09npgvzW36jHgKLX"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WQcUARgH"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/ds/TagActivity;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
