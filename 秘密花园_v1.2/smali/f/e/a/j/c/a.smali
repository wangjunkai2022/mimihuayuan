.class public final synthetic Lf/e/a/j/c/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ba/BaActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/ba/BaActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/c/a;->a:Lcom/comeback/data/ui/ba/BaActivity;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lf/e/a/j/c/a;->a:Lcom/comeback/data/ui/ba/BaActivity;

    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/ba/BaActivity;->l(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
