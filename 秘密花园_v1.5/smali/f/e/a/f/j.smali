.class public final synthetic Lf/e/a/f/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/comeback/data/base/BaseViewPagerFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/base/BaseViewPagerFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/f/j;->a:Lcom/comeback/data/base/BaseViewPagerFragment;

    iput p2, p0, Lf/e/a/f/j;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/e/a/f/j;->a:Lcom/comeback/data/base/BaseViewPagerFragment;

    iget v1, p0, Lf/e/a/f/j;->b:I

    invoke-virtual {v0, v1}, Lcom/comeback/data/base/BaseViewPagerFragment;->j(I)V

    return-void
.end method
