.class public final synthetic Lf/e/a/j/c/f/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/ba/fragment/RecommendFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/c/f/b;->a:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lf/e/a/j/c/f/b;->a:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

    invoke-virtual {v0, p1, p2}, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->i(Landroid/widget/RadioGroup;I)V

    return-void
.end method
