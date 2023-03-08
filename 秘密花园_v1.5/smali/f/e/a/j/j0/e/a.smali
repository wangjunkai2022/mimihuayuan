.class public final synthetic Lf/e/a/j/j0/e/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;

.field public final synthetic b:Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/j0/e/a;->a:Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;

    iput-object p2, p0, Lf/e/a/j/j0/e/a;->b:Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lf/e/a/j/j0/e/a;->a:Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;

    iget-object v1, p0, Lf/e/a/j/j0/e/a;->b:Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter;->d(Lcom/comeback/data/ui/senlin/adapter/VSearchAdapter$b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
