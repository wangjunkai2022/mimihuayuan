.class public Lcom/umeng/commonsdk/statistics/idtracking/q;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "UOPTracker.java"


# static fields
.field public static final a:Ljava/lang/String; = "uopdta"

.field public static final b:Ljava/lang/String; = "uop"


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "uop"

    .line 1
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/q;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "uopdta"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method
