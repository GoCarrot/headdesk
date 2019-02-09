.class public final Lio/teak/sdk/c/c;
.super Lio/teak/sdk/n;
.source "SourceFile"


# instance fields
.field public final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    const-string v0, "ExternalBroadcastEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/n;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lio/teak/sdk/c/c;->b:Landroid/content/Intent;

    .line 30
    return-void
.end method
