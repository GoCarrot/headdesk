.class public final Lio/teak/sdk/c/m;
.super Lio/teak/sdk/n;
.source "SourceFile"


# instance fields
.field public final b:Lio/teak/sdk/b/d$b;


# direct methods
.method public constructor <init>(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;Lio/teak/sdk/b/d$b;)V
    .locals 1
    .param p1    # Lio/teak/sdk/b/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/b/d$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/teak/sdk/b/d$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    const-string v0, "SessionStateEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/n;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lio/teak/sdk/c/m;->b:Lio/teak/sdk/b/d$b;

    .line 35
    return-void
.end method
