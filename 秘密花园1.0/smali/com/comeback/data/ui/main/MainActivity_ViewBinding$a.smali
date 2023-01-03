.class public Lcom/comeback/data/ui/main/MainActivity_ViewBinding$a;
.super Ld/c/b;
.source "MainActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/MainActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/main/MainActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/MainActivity_ViewBinding;Lcom/comeback/data/ui/main/MainActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/main/MainActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/MainActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/main/MainActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/MainActivity;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/main/MainActivity;->tvNotice:Lcom/comeback/data/widget/MarqueeTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/main/NoticeActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
