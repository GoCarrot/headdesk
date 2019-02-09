.class public final Lio/teak/sdk/c/l;
.super Lio/teak/sdk/n;
.source "SourceFile"


# instance fields
.field public final b:Lio/teak/sdk/a/d;


# direct methods
.method public constructor <init>(Lio/teak/sdk/a/d;)V
    .locals 1
    .param p1    # Lio/teak/sdk/a/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    const-string v0, "RemoteConfigurationEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/n;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/d;

    .line 30
    return-void
.end method
