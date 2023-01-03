.class public final synthetic Lf/e/a/j/b/f/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/b/f/d;->a:Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lf/e/a/j/b/f/d;->a:Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/comeback/data/ui/avbobo/fragment/SearchFragment;->h(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
