.class public Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding$a;
.super Ld/c/b;
.source "TypeFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;-><init>(Lcom/comeback/data/ui/tv91/fragment/TypeFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding;Lcom/comeback/data/ui/tv91/fragment/TypeFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->etSearch:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
