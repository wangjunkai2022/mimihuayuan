.class public abstract Lm/i;
.super Ljava/lang/Object;
.source "SingleSubscriber.java"

# interfaces
.implements Lm/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/k;"
    }
.end annotation


# instance fields
.field public final a:Lm/o/d/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm/o/d/g;

    invoke-direct {v0}, Lm/o/d/g;-><init>()V

    iput-object v0, p0, Lm/i;->a:Lm/o/d/g;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/i;->a:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/i;->a:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    return-void
.end method
