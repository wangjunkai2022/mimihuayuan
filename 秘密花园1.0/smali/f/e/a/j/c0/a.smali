.class public final synthetic Lf/e/a/j/c0/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/maomi/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/maomi/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/c0/a;->a:Lcom/comeback/data/ui/maomi/MainActivity;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lf/e/a/j/c0/a;->a:Lcom/comeback/data/ui/maomi/MainActivity;

    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/maomi/MainActivity;->l(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
