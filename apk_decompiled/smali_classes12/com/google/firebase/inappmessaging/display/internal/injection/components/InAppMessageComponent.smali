.class public interface abstract Lcom/google/firebase/inappmessaging/display/internal/injection/components/InAppMessageComponent;
.super Ljava/lang/Object;
.source "InAppMessageComponent.java"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/display/dagger/Component;
    modules = {
        Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;
    }
.end annotation


# virtual methods
.method public abstract bannerBindingWrapper()Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;
.end method

.method public abstract cardBindingWrapper()Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/CardBindingWrapper;
.end method

.method public abstract imageBindingWrapper()Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;
.end method

.method public abstract modalBindingWrapper()Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ModalBindingWrapper;
.end method
