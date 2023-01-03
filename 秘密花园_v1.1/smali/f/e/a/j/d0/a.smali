.class public final synthetic Lf/e/a/j/d0/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lm/n/c;


# static fields
.field public static final synthetic a:Lf/e/a/j/d0/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lf/e/a/j/d0/a;

    invoke-direct {v0}, Lf/e/a/j/d0/a;-><init>()V

    sput-object v0, Lf/e/a/j/d0/a;->a:Lf/e/a/j/d0/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/comeback/data/ui/md/bean/MdApiBean;

    invoke-static {p1}, Lcom/comeback/data/ui/md/ChanelActivity;->t(Lcom/comeback/data/ui/md/bean/MdApiBean;)Lm/e;

    move-result-object p1

    return-object p1
.end method
