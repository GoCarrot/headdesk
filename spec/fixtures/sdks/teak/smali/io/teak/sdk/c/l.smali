.class public final Lio/teak/sdk/c/l;
.super Lio/teak/sdk/o;
.source "SourceFile"


# instance fields
.field public final b:Lio/teak/sdk/a/e;


# direct methods
.method public constructor <init>(Lio/teak/sdk/a/e;)V
    .locals 1
    .param p1    # Lio/teak/sdk/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    const-string v0, "RemoteConfigurationEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/o;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/e;

    .line 16
    return-void
.end method
