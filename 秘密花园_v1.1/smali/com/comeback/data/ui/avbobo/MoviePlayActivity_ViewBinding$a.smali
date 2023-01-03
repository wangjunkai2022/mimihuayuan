.class public Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding$a;
.super Ld/c/b;
.source "MoviePlayActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding;Lcom/comeback/data/ui/avbobo/MoviePlayActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/avbobo/MoviePlayActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/avbobo/MoviePlayActivity;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/avbobo/MoviePlayActivity;->llLine:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
