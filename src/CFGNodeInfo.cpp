#include <gtirb/CFGNode.hpp>
#include <gtirb/CFGNodeInfo.hpp>
#include <gtirb/NodeValidators.hpp>
#include <gtirb/RuntimeError.hpp>
#include <gtirb/Symbol.hpp>
#include <cassert>

using namespace gtirb;

CFGNodeInfo::CFGNodeInfo() : Node()
{
    this->addParentValidator(gtirb::NodeValidatorHasParentOfType<gtirb::CFGNode>());
    this->addParentValidator(gtirb::NodeValidatorHasNoSiblingsOfType<gtirb::CFGNodeInfo>());
}

void CFGNodeInfo::setProcedureNameSymbol(gtirb::Symbol* x)
{
    auto sharedNode = std::dynamic_pointer_cast<Symbol>(x->shared_from_this());
    assert(sharedNode != nullptr);
    this->procedureNameSymbol = sharedNode;
}

gtirb::Symbol* CFGNodeInfo::getProcedureNameSymbol() const
{
    return this->procedureNameSymbol.lock().get();
}
